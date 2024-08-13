from django.shortcuts import render
from django.contrib import auth  # 登录_数据库
from django.http import JsonResponse
from app.models import *        # 数据库
from django.views import View # CBV
'''
    之前如果是post请求
    需要
    if request.method == 'POST':
        .....
    
    使用CBV的话
    class LoginView(View):
        def post(self, request):  post请求都会走这个路
        def get(self, request):  get请求都会走这个路
'''
# CBV

# 登录
class LoginView(View):
    def post(self, request):
        res = {
            'msg': "登录成功",
            'self': None
        }
        data = request.data
        print(f"login的post拿到{data}")
        # 是否有名字
        name = data.get('name')
        if not name:
            res['msg'] = "请输入用户名"
            res['self'] = 'name'
            return JsonResponse(res)
        # 是否有密码
        pwd = data.get('pwd')
        if not pwd:
            res['msg'] = "请输入密码"
            res['self'] = 'pwd'
            return JsonResponse(res)
        # 校验密码
        # auth.authenticate自动对比数据库中的用户和密码
        user = auth.authenticate(username=name, password=pwd)
        print("login登录人：", str(user))
        if not user:
            # if name !="123" or pwd != "11":
            res['msg'] = "用户名或密码错误"
            res['self'] = 'pwd'
            return JsonResponse(res)
        # 登录
        auth.login(request, user)
        return JsonResponse(res)

# 注册
class SignupView(View):
    def post(self, request):
        res = {
            'msg': "注册成功",
            'self': None
        }
        data = request.data
        print(f"signup的post拿到{data}")
        # 是否有名字
        name = data.get('name')
        if not name:
            res['msg'] = "请输入用户名"
            res['self'] = 'name'
            return JsonResponse(res)
        # 是否有密码
        pwd = data.get('pwd')
        if not pwd:
            res['msg'] = "请输入密码"
            res['self'] = 'pwd'
            return JsonResponse(res)
        pwd_again = data.get('pwd_again')
        if not pwd_again:
            res['msg'] = "请再次输入密码"
            res['self'] = 'pwd_again'
            return JsonResponse(res)
        if pwd != pwd_again:
            res['msg'] = "两次密码不一致"
            res['self'] = 'pwd_again'
            return JsonResponse(res)
        user_query = UserInfo.objects.filter(username=name)
        if user_query:
            res['msg'] = "该用户名已经被注册"
            res['self'] = 'name'
            return JsonResponse(res)
        # 注册
        user = UserInfo.objects.create_user(username=name, password=pwd)
        print(f"注册者：{user}")
        # 注册成功，并完成登录
        auth.login(request, user)
        return JsonResponse(res)
