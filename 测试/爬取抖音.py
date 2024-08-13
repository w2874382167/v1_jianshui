import requests

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
print("发送请求", r.status_code)

# 用JSON接受
json_data = r.json()
title_list = []
score_list = []
url_list = []

hot_list = json_data['word_list']
for item in hot_list:
    print(item['word'])


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
    print("发送请求", r.status_code)

    # 用JSON接受
    json_data = r.json()
    hot_list = json_data['word_list']
    new_list=[]
    for index, item in enumerate(hot_list):
        item["index"] = index+1

    for i in hot_list:
        new_item = {'index': i["index"], 'query': i["word"], 'hotScore': i["hot_value"], "appUrl": 'https://www.douyin.com/'}
        new_list.append(new_item)
    return new_list
if __name__ == '__main__':
    print(spider_douyin())