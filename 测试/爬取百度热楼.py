import requests

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
r = requests.get(url, headers=header)
print("发送请求",r.status_code)
# 用JSON接受
json_data = r.json()
title_list = []
score_list = []
url_list = []

# 普通热搜
content_list = json_data['data']['cards'][0]['content']
for item in content_list:
    print(item['query'])

print("爬取结束", len(content_list))

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
            new_list.append(item)
        return new_list
    except Exception as e:
        print("爬取百度出现问题", e)

if __name__ == '__main__':
    spider_baidu()