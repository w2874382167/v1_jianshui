# 定义中间件，用于解析post发来的请求，转换JSON字符串
import json
from django.core.cache import cache
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


# 中间件获取在线人数
class StatisticalMiddleware(MiddlewareMixin):
    def process_request(self, request):
        # 获取用户的真实IP地址
        x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
        if x_forwarded_for:
            ip = x_forwarded_for.split(',')[0]
        else:
            ip = request.META.get('REMOTE_ADDR')

        online_ips = list(cache.get("online_ips", []))

        if online_ips:
            online_ips = list(cache.get_many(online_ips).keys())

        cache.set(ip, 0, 120)  # 超时时间 单位：秒

        if ip not in online_ips:
            online_ips.append(ip)

        cache.set("online_ips", online_ips)

        request.online_list = online_ips
