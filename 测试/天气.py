
import requests

url = 'https://weatheroffer.com/api/weather/hourly?location=101290303&lang=zh'

header = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'
}
r = requests.get(url, headers=header)
print(r.status_code)

# 用JSON接受
json_data = r.json()
weather_list = json_data['data']['hourly'][0]
print(weather_list)