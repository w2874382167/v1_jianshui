from django.views import View  # CBV
from django.http import JsonResponse
import requests


def get_weather():
    try:
        url = 'https://weatheroffer.com/api/weather/hourly?location=101290303&lang=zh'

        header = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'
        }
        r = requests.get(url, headers=header)

        # 用JSON接受
        json_data = r.json()
        weather_list = json_data['data']['hourly'][0]
        return weather_list
    except Exception as e:
        pass


class WeatherView(View):
    def get(self, request):
        res={
            'msg': "天气获取成功",
            'code':0
        }
        try:
            weather_list = get_weather()
            res['data'] = weather_list
            res['code'] = 1
            return JsonResponse(res)
        except Exception as e:
            res['msg'] = str(e)
            res['code'] = 0
            return JsonResponse(res)