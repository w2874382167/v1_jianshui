import requests
def spider_douyin():
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
        item["index"] = index +1
        item["uri"] = "https://search.bilibili.com/all?keyword="+item["show_name"]
    print(hot_list)
    for i in hot_list:
        new_item = {'index': i["index"], 'query': i["show_name"], 'hotScore': '', "appUrl": i["uri"], "hotTagImg":i["icon"]}
        new_list.append(new_item)
    return new_list
if __name__ == '__main__':
    print(spider_douyin())