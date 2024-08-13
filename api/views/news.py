from django.views import View  # CBV
from django.http import JsonResponse
import requests
from lxml import etree


def spider_baidu():
    url = 'https://top.baidu.com/api/board?platform=wise&tab=realtime&tag=%7B%7D'
    header = {
        'User-Agent': 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36 Edg/127.0.0.0',
        'Host': 'top.baidu.com',
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6',
        'Referer': 'https://top.baidu.com/board?tab=homepage'
    }
    # 发送请求
    try:
        r = requests.get(url, headers=header)
        # 用JSON接受
        json_data = r.json()
        # 普通热搜
        content_list = json_data['data']['cards'][0]['content']
        new_list = []
        for item in content_list:
            # 创建一个新的字典或对象，其中 index 加 1，其余属性保持不变
            new_item = item.copy()  # 如果 item 是字典，你可以用 copy() 方法复制
            new_item['index'] = item['index'] + 1
            new_list.append(new_item)
        return new_list
    except Exception as e:
        print("爬取百度出现问题", e)


# 微博
def spider_weibo():
    url = 'https://tophub.today/n/KqndgxeLl9'
    header = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',
    }
    try:
        res = requests.get(url, headers=header)
        html = etree.HTML(res.text)
        trs = html.xpath('/html/body/div[1]/div[2]/div[2]/div[1]/div[2]/div/div[1]/table/tbody/tr')

        def geyfirsttext(list):
            """
            返回列表中第一个元素的参数
            :return:
            """
            try:
                return list[0].strip()
            except:
                return ''

        new_list = []
        for tr in trs:
            # 序号
            id = geyfirsttext(tr.xpath('./td[1]/text()'))
            # 标题
            title = geyfirsttext(tr.xpath('./td[2]/a/text()'))
            # 热度
            hot = geyfirsttext(tr.xpath('./td[3]/text()'))
            # 链接
            url = 'https://tophub.today' + tr.xpath('./td[2]/a/@href')[0]
            new_item = {"index": id, 'query': title, 'hotScore': hot, "appUrl": url}
            new_list.append(new_item)
        return new_list
    except:
        pass


# 抖音
def spider_douyin():
    url = 'https://www.iesdouyin.com/web/api/v2/hotsearch/billboard/word/?reflow_source=reflow_page&web_id=7401353451021813283&device_id=7401353451021813283&msToken=6PhDWiYdzsvvrN5K3YRpW2fEN38cu1znGMGGGnDkcz_Esf2EBMil8bthq8WPqsqesao9MfbuJValDqwCF2ozFYfFYI4l2we4eq5YkAgf4mAjB9Wuj3tALJG2KL2V5nQyZhc5qnBLsgEzszoirmBbut4oT4c1msxzTgt9Juo%3D&a_bogus=m6WqBdgvDi2B6fm65-cLfY3q3lr3YDuR0b1sMD2Lxnfrpy39HMYV9exoP3kvJGmjN4%2FkIbfjy4hbTpcprQVG81wf98vx%2F25dmESkKl5Q5xSSs1XHCyUgJ0Ximkt-tec2Rk3lrOUQoiKGzbG0AIee-wHvnwVxapSD'

    header = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6',
        'Referer': 'https://www.iesdouyin.com/share/billboard/?id=1&utm_source=copy&utm_campaign=client_share&utm_medium=android&share_app_name=douyin'
    }
    # 发送请求
    r = requests.get(url, headers=header)
    # 用JSON接受
    hot_list = r.json()['word_list']
    new_list = []
    for index, i in enumerate(hot_list):
        i["index"] = index + 1
        new_item = {'index': i["index"], 'query': i["word"], 'hotScore': i["hot_value"],
                    "appUrl": f'https://www.douyin.com/search/{i["word"]}'}
        new_list.append(new_item)
    return new_list


# b站
def spider_bilibili():
    url = 'https://api.bilibili.com/x/web-interface/wbi/search/square?limit=10&platform=web&w_rid=71ebd864c83dbadece75453a8ab94112&wts=1723379488'

    header = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',
        'Accept': 'application/json, text/plain, */*',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6',
    }

    # 发送请求
    r = requests.get(url, headers=header)
    print("发送请求", r.status_code)

    # 用JSON接受
    json_data = r.json()
    hot_list = json_data['data']['trending']['list']
    print(hot_list)
    new_list = []
    for index, item in enumerate(hot_list):
        print(index)
        item["index"] = index + 1
        item["uri"] = "https://search.bilibili.com/all?keyword=" + item["show_name"]
    print(hot_list)
    for i in hot_list:
        new_item = {'index': i["index"], 'query': i["show_name"], 'hotScore': '', "appUrl": i["uri"],
                    "hotTagImg": i["icon"]}
        new_list.append(new_item)
    return new_list


class NewsView(View):
    def post(self, request, nid):
        res = {
            'msg': "爬取成功",
            'code': "1"
        }
        if nid == "1":  # 百度
            res["data"] = spider_baidu()
        elif nid == "2":  # 微博
            res["data"] = spider_douyin()
        elif nid == "3":  # 抖音
            res["data"] = spider_weibo()
        elif nid == "4":
            res["data"] = spider_bilibili()
        else:
            res["data"] = 0
        return JsonResponse(res)
