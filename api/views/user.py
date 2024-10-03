import json
from django.http import JsonResponse
from app.models import *
from django.views import View # CBV
from app.templatetags.viewsHelp import get_client_ip

# 修改个人信息
class editUserView(View):
    def get(self, request):
        res = {
            'msg': "用户信息获取成功",
            'code': 0,
        }
        try:
            user =request.user
            res = {
                'code': 1,
                'data': {
                    'name': user.username,
                    'qq_num': user.qq_num,
                    'password': "",
                }
            }
            if user.sex == 1:
                res['data']['sex'] = "女"
            else:
                res['data']['sex'] = "男"
        except Exception as e:
            res['msg'] = str(e)
            res['code'] = 0
        return JsonResponse(res)

    def post(self, request):
        res={
            'msg': "修改成功",
            'code': 0,
        }
        data: dict = request.data
        user = request.user
        try:
            user.username = data.get('name', user.username)    # 修改用户名
            user.qq_num = data.get('qq_num', user.qq_num)   # 修改QQ号码
            sex = data.get('sex')
            if sex == "女":
                sex = 1
            else:
                sex = 0
            user.sex= sex   # 修改性别
            password = data.get('password')         # 修改密码
            if password:
                user.set_password(password)
            user.save()
            res['code'] = 1
        except Exception as e:
            res['msg'] = str(e)
            res['code'] = 0
        return JsonResponse(res)

# 修改头像
class EditAvatarView(View):
    def post(self, request):
        # 本来这里在中间件就解析了的，不知道为什么，现在突然不行，无语了
        data = json.loads(request.body)
        # data = request.data
        res={
            'msg': "头像修改成功",
            'code': 0
        }
        try:
            user = request.user # 人
            avatar = Avatars.objects.get(nid=data)  # 图片
            user.avatar_url=avatar.url.url   # 绑定
            user.save()
            res['code'] = 1
            res['data'] = avatar.url.url
        except Exception as e:
            res['msg'] = str(e)
            res['code'] = 0
        return JsonResponse(res)