import requests
from lxml import etree
url = 'https://tophub.today/n/KqndgxeLl9'
header = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0',
}
res = requests.get(url, headers=header)
print(res.status_code)
html = etree.HTML(res.text)
trs =html.xpath('/html/body/div[1]/div[2]/div[2]/div[1]/div[2]/div/div[1]/table/tbody/tr')

def geyfirsttext(list):
    """
    返回列表中第一个元素的参数
    :return:
    """
    try:
        return list[0].strip()
    except :
        return ''
for tr in trs:
    # 序号
    id = geyfirsttext(tr.xpath('./td[1]/text()'))
    # 标题
    title = geyfirsttext(tr.xpath('./td[2]/a/text()'))
    # 热度
    hot = geyfirsttext(tr.xpath('./td[3]/text()'))
    a = tr.xpath('./td[2]/a/@href')[0]
    url = 'https://tophub.today/'+a
    print(id,title, hot,url)