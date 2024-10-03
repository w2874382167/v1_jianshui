import json
import os
from datetime import date
import datetime
from collections import OrderedDict  # json数据排序
from django.http import JsonResponse
from django.views import View # CBV
from api.views import SparkApi

# 大模型api和一些实现函数
class API():
    def __init__(self):
        # 获取当前文件的同级目录路径
        current_directory = os.path.dirname(os.path.abspath(__file__))
        # 定位到 history_json 文件夹
        history_json_folder = os.path.join(current_directory, 'history_json')
        # 判断 'history.json' 文件是否存在于 'aa' 文件夹中
        self.history_json_path = os.path.join(history_json_folder, 'history.json')
        if os.path.exists(self.history_json_path):
            with open(self.history_json_path, 'r', encoding='utf-8') as f:
                self.chat_data = json.load(f)
        else:
            self.chat_data = {"chat": {}}
        # 创建今天
        today = date.today()
        today = today.strftime('%Y-%m-%d')
        if today not in self.chat_data["chat"]:
            self.create_date(today)

        #----------大模型-----------------------
        # 以下密钥信息从控制台获取   https://console.xfyun.cn/services/bm35
        self.appid = "9a71260f"  # 填写控制台中获取的 APPID 信息
        self.api_secret = "MzU5MzEzMWQ0M2M4ZTRmYzRmNWVkOTBk"  # 填写控制台中获取的 APISecret 信息
        self.api_key = "f1d45fdb89f7c6cc9ea3fc419443d6ef"  # 填写控制台中获取的 APIKey 信息

        self.domain = "generalv3.5"  # Max版本
        # domain = "generalv3"       # Pro版本
        # domain = "general"         # Lite版本

        self.Spark_url = "wss://spark-api.xf-yun.com/v3.5/chat"  # Max服务地址
        # Spark_url = "wss://spark-api.xf-yun.com/v3.1/chat"  # Pro服务地址
        # Spark_url = "wss://spark-api.xf-yun.com/v1.1/chat"  # Lite服务地址


    def get_dates(self):
        # 从 chat_data 中获取所有日期
        if "chat" in self.chat_data:
            dates = list(self.chat_data["chat"].keys())
            return dates
        return []

    def get_chat_data(self,date):
        # 从指定日期下面得到聊天记录
        if date in self.chat_data["chat"]:
            chatlist = self.chat_data["chat"][date]
        else :
            chatlist = []
        return chatlist

    def delete_chat_data(self, date):
        try:
            if date in self.chat_data["chat"]:
                del self.chat_data["chat"][date]
            with open(self.history_json_path, 'w', encoding='utf-8') as f:
                json.dump(self.chat_data, f, ensure_ascii=False, indent=4)
                return 0
        except Exception as e:
            return e


    def create_date(self, today):
        try:
            self.chat_data["chat"][today] = {"contents":[]}
            # 对 chat 字典按日期降序排序
            sorted_chat = OrderedDict(sorted(self.chat_data["chat"].items(), reverse=True))
            self.chat_data["chat"] = sorted_chat
            with open(self.history_json_path, 'w', encoding='utf-8') as f:
                json.dump(self.chat_data, f, ensure_ascii=False, indent=4)
            return 0
        except (FileNotFoundError, PermissionError) as e:
            print("错误", e)


    def write_json(self,issue,answer,date):
        try:
            contents = self.chat_data["chat"][date]["contents"]
            contents.append({"message": issue, "response": answer})
            with open(self.history_json_path, 'w', encoding='utf-8') as f:
                json.dump(self.chat_data, f, ensure_ascii=False, indent=4)

            return 0
        except (FileNotFoundError, PermissionError) as e:
            print("写入json出错",e)
            return e
    # ---------大模型的函数------------------

    def getlength(self,text):
        length = 0
        for content in text:
            temp = content["content"]
            leng = len(temp)
            length += leng
        return length

    def checklen(self,text):
        while (self.getlength(text) > 8000):
            del text[0]
        return text


# 历史对话日期
class historylistView(View):
    def get(self, request):
        res={
            'msg': "历史对话加载成功",
            'code': 0,
        }
        try:
            api = API()
            res['data'] = api.get_dates()
            res['code'] = 1
            return JsonResponse(res)
        except Exception as e:
            res['msg'] = str(e)
            res['code'] = 0
            return JsonResponse(res)


# 聊天记录
class chatlistView(View):
    def get(self, requset,date):
        res = {
            'msg': f"{date}聊天记录加载成功",
            'code': 0,
        }
        try:
            api = API()
            chatdat= api.get_chat_data(date)
            res['data'] = chatdat
            res['code'] = 1
            return JsonResponse(res)
        except Exception as e:
            res['msg'] = str(e)
            res['code'] = 0
            return JsonResponse(res)


# 删除聊天记录
class deletechatView(View):
    def post(self, request, date):
        res={
            'msg': "删除成功!",
            'code': 0,
        }
        try:
            api = API()
            r = api.delete_chat_data(date)
            if r == 0:
                res['code'] = 1
                return JsonResponse(res)
            else:
                print("删除错误",r)
                res['msg'] = str(r)
                res['code'] = 0
            return JsonResponse(res)
        except Exception as e:
            res['msg'] = str(e)
            res['code'] = 0
            return JsonResponse(res)

# 调用模型回答
class issueView(View):
    def post(self, request):
        res = {
            'msg': "调用出现意外!",
            'code': 0,
        }
        try:
            date = request.data['date']
            if not date:
                # 如果没有提供日期，则使用当前日期
                today = datetime.date.today()
                date = today.strftime('%Y-%m-%d')  # 格式化为字符串 'YYYY-MM-DD'
            issue = request.data['issue'].rstrip()
            print("问题", issue)
            if not issue or issue.strip() == "":
                res['msg'] = "请输入你的疑惑哦，我来替你解答"
                res['code'] = 0
                return JsonResponse(res)
            # -----调用模型----------
            # 自己创建字典
            text = [{"role": "user", "content": f"{issue}"}]
            api = API()
            question = api.checklen(text)
            SparkApi.answer = ""
            SparkApi.main(api.appid, api.api_key, api.api_secret, api.Spark_url, api.domain, question)
            answer = SparkApi.answer
            # 调用结束，写入json
            r = api.write_json(issue, answer, date)
            print("调用",r)
            if r == 0:
                res['code'] = 1
                res['msg'] = "已回答"
                res['date'] = date
                return JsonResponse(res)
            else:
                res['msg'] = str(r)
                res['code'] = 0
        except Exception as e:
            res['msg'] = str(e)
            res['code'] = 0
            print("res" , res)
            return JsonResponse(res)
