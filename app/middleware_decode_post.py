# 定义中间件，用于解析post发来的请求，转换JSON字符串
import json

from django.utils.deprecation import MiddlewareMixin  # 中间件


# 解析post发来的请求
class Decode_Post_Middleware(MiddlewareMixin):
    # 请求中间件

    def process_request(self, request):
        if request.method == "POST" and request.META.get('CONTENT_TYPE') == 'application/json':
            print("请求中间件解析")
            data = json.loads(request.body.decode('utf-8'))
            request.data = data


    # 响应中间件
    def process_response(self, request, response):
        print("响应中间件返回")
        return response