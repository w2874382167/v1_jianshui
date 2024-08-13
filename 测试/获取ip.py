import requests

#
# # 获取当前ip
# def get_ip():
#     respone = requests.get('http://api64.ipify.org?format=json').json()
#     return respone.get('ip')
#
#
# # 获取Ip地址数据
# def get_location():
#     ip_add = get_ip()
#     respone = requests.get('https://ipapi.co/{}/json/'.format(ip_add)).json()
#     print(respone)
url = 'https://qifu-api.baidubce.com/ip/geo/v1/district?ip=112.113.254.74'
header ={
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'
}
# 发送请求
r = requests.get(url, headers=header)
json_data = r.json()
print(json_data)


# 直接从 'data' 中提取所需信息
ip_list = {}
ip_list['country'] = json_data['data']['country']
ip_list['owner'] = json_data['data']['owner']
ip_list['prov'] = json_data['data']['prov']
ip_list['city'] = json_data['data']['city']
ip_list['district'] = json_data['data']['district']
ip_list['ip'] = json_data['ip']
print(ip_list)