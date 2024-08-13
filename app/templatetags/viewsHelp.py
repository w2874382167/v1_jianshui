import requests


# 24节气
def get_jieqi_index(today):
    # 定义节气的开始日期列表
    jieqi_start_dates = [
        (1, 6), (1, 20), (2, 4), (2, 19), (3, 5), (3, 20),
        (4, 4), (4, 20), (5, 5), (5, 21), (6, 6), (6, 21),
        (7, 7), (7, 22), (8, 7), (8, 23), (9, 7), (9, 23),
        (10, 8), (10, 23), (11, 7), (11, 22), (12, 7), (12, 21)
    ]

    # 如果今天是节气的开始日期，返回当前节气的索引
    if (today.month, today.day) in jieqi_start_dates:
        for index, (month, day) in enumerate(jieqi_start_dates):
            if (today.month, today.day) == (month, day):
                print("节气：",index)
                return index

    # 如果不是节气的开始日期，找到最近的节气索引
    for index, (month, day) in enumerate(jieqi_start_dates):
        if (today.month, today.day) < (month, day):
            if ((index - 3) % 24) < 0:
                return 0
            print("节气", index)
            return (index - 3) % 24

    # 如果是一年中的最后一天，返回最后一个节气的索引
    return 23


# 获取ip信息
def get_client_ip(request):
    global json_data
    try:

        x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
        if x_forwarded_for:
            ip = x_forwarded_for.split(',')[0]
        else:
            ip = request.META.get('REMOTE_ADDR')
        url = f"https://qifu-api.baidubce.com/ip/geo/v1/district?ip={ip}"
        header = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0'
        }
        # 发送请求
        r = requests.get(url, headers=header)
        json_data = r.json()
        ip_list = {'country': json_data['data']['country'], 'owner': json_data['data']['owner'],
                   'prov': json_data['data']['prov'], 'city': json_data['data']['city'],
                   'district': json_data['data']['district'], 'ip': json_data['ip']}

        return ip_list
    except Exception as e:
        print("获取ip出现了错误", e)
        ip_list = {'country': "CN", 'owner': "未知",
                   'prov': "内网", 'city': "ip",
                   'district': json_data['ip'], 'ip': json_data['ip']}
        return ip_list