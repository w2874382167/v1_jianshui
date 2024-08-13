import re
import time
import os
import requests
from bs4 import BeautifulSoup as bs

class Url2Html(object):
    """根据微信文章链接下载为本地HTML文件"""

    def __init__(self, img_path=None, save_dir="downloads"):
        """
        Parameters
        ----------
        img_path: str
            本地存储图片的路径，采用绝对路径的方式引用图片。可不下载图片
        save_dir: str
            保存文件的根目录
        """
        self.data_src_re = re.compile(r'data-src="(.*?)"')
        self.data_croporisrc_re = re.compile(r'data-croporisrc="(.*?)"')
        self.src_re = re.compile(r'src="(.*?)"')
        self.save_dir = save_dir

    @staticmethod
    def replace_name(title):
        """
        对进行标题替换，确保标题符合windows的命名规则

        Parameters
        ----------
        title: str
            文章标题

        Returns
        ----------
        str: 替换后的文章标题
        """
        rstr = r"[\/\\\:\*\?\"\<\>\|]"  # '/ \ : * ? " < > |'
        title = re.sub(rstr, "", title).replace("|", "").replace("\n", "")
        return title

    def download_img(self, url):
        """
        Parameters
        ----------
        url: str
            图片链接

        Returns
        ----------
        str: 下载图片的本地路径
        """
        # 根据链接提取图片名
        name = "{}.{}".format(url.split("/")[-2], url.split("/")[3].split("_")[-1])
        save_path = os.path.join(self.save_dir, self.account, "imgs", name)
        # 如果该图片已被下载，可以无需再下载，直接返回路径即可
        if os.path.isfile(save_path):
            with open(save_path, "rb") as f:
                img = f.read()
            return os.path.join("imgs", name), img

        response = requests.get(url, proxies=self.proxies)
        img = response.content
        os.makedirs(os.path.dirname(save_path), exist_ok=True)
        with open(save_path, "wb") as f:
            f.write(img)
        return os.path.join("imgs", name), img

    def replace_img(self, html):
        """
        根据提供的html源码找出其中的图片链接，并对其进行替换

        Parameters
        ----------
        html: str
            文章HTML源码

        Returns
        ----------
        str: 替换html中在线图片链接为本地图片路径
        """
        data_croporisrc_lst = self.data_croporisrc_re.findall(html)
        data_src_lst = self.data_src_re.findall(html)
        src_lst = self.src_re.findall(html)

        img_url_lst = data_croporisrc_lst + data_src_lst + src_lst
        img_lst = []
        for img_url in img_url_lst:
            if "mmbiz.qpic.cn" in img_url:
                data_src, img = self.download_img(img_url)
                img_lst.append([data_src, img])
                # 以绝对路径的方式替换图片
                html = html.replace(img_url, data_src).replace("data-src=", "src=")
        return html, img_lst

    @staticmethod
    def get_title(html):
        """
        根据提供的html源码提取文章中的标题
        Parameters
        ----------
        html: str
            文章HTML源码

        Returns
        ----------
        str: 根据HTML获取文章标题
        """
        try:
            title = html.split("<h2")[1].split("</h2")[0].split(">")[1].strip()
            return title
        except Exception as e:
            try:
                title = html.split("<h1")[1].split("</h1")[0].split(">")[1].strip()
                return title
            except Exception as e:
                return ""

    @staticmethod
    def article_info(html):
        """
        根据提供的html源码提取文章中的公众号和作者

        Parameters
        ----------
        html: str
            文章HTML源码

        Returns
        ----------
        (str, str): 公众号名字和作者名字
        """
        # account = html.split('profile_nickname">')[1].split('</strong')[0]
        # author = html.split('id="js_name">')[1].split("</a")[0].strip()
        account = html.split('id="js_name">')[1].split("</a")[0].strip()
        print("账户：", account)
        # , author
        return account

    @staticmethod
    def get_timestamp(html):
        """
        根据提供的html源码提取文章发表的时间戳

        Parameters
        ----------
        html: str
            文章HTML源码

        Returns
        ----------
        int: 文章发表的时间戳
        """
        timestamp = int(html.split('ct = "')[1].split('";')[0].strip())
        return timestamp

    @staticmethod
    def timestamp2date(timestamp):
        """
        时间戳转日期

        Parameters
        ----------
        timestamp: int
                时间戳

        Returns
        ----------
        str: 文章发表的日期，yyyy-mm-dd
        """
        ymd = time.localtime(timestamp)
        date = "{}-{}-{}".format(ymd.tm_year, ymd.tm_mon, ymd.tm_mday)
        return date

    def rename_title(self, title, html):
        # 自动获取文章标题
        if title is None:
            title = self.get_title(html)
        if title == "":
            return ""
        title = self.replace_name(title)

        if self.account is None:
            try:
                account_name = self.article_info(html)
            except:
                account_name = "古城建水"
            self.account = account_name
        else:
            account_name = self.account
        try:
            date = self.timestamp2date(self.get_timestamp(html))
        except:
            date = ""
        account_dir = os.path.join(self.save_dir, account_name)
        if not os.path.isdir(account_dir):
            os.makedirs(account_dir)

        title = os.path.join(account_dir, "[{}]-{}-{}".format(account_name, date, title))
        return title

    @staticmethod
    def download_media(html, title):
        soup = bs(html, "lxml")
        # mp3
        mpvoice_item_lst = soup.find_all("mpvoice")
        base_url = "https://res.wx.qq.com/voice/getvoice?mediaid="
        for i, item in enumerate(mpvoice_item_lst, 1):
            if os.path.isfile("{}-{}.mp3".format(title, i)):
                continue
            doc = requests.get(base_url + item["voice_encode_fileid"])
            with open("{}-{}.mp3".format(title, i), "wb") as f:
                f.write(doc.content)
        # video
        if os.path.isfile("{}.mp4".format(title)):
            return ""
        video_url = re.findall(r"url: \'(.+)\',\n", html)
        if video_url:
            video_url = [url for url in video_url if "videoplayer" not in url]
            if video_url:
                video_url = video_url[0].replace(r"\x26", "&")
                doc = requests.get(video_url)
                with open("{}.mp4".format(title), "wb") as f:
                    f.write(doc.content)

    @staticmethod
    def test_replace_img(html):
        return html.replace("data-src=", "src=").replace("wx_fmt=jpeg", "wx_fmt=web")

    def run(self, url, mode, proxies={"http": None, "https": None}, **kwargs):
        """
                Parameters
                ----------
                url: str
                     微信文章链接
                mode: int
                    运行模式
                    1: 返回html源码，不下载图片
                    2: 返回html源码，下载图片但不替换图片路径
                    3: 返回html源码，下载图片且替换图片路径
                    4: 保存html源码，下载图片且替换图片路径
                    5: 保存html源码，下载图片且替换图片路径，并下载视频与音频
                    6: 返回html源码，不下载图片，替换src和图片为web
                kwargs:
                    account: 公众号名
                    title: 文章名
                    date: 日期
                    proxies: 代理

                Returns
                ----------
                str: HTML源码或消息
                """
        self.proxies = proxies
        if mode == 1:
            return requests.get(url, proxies=proxies).text
        elif mode == 6:
            return self.test_replace_img(requests.get(url, proxies=proxies).text)
        elif mode in [2, 3, 4, 5]:
            if mode == 2:
                return requests.get(url, proxies=proxies).text
            elif mode == 3:
                html = requests.get(url, proxies=proxies).text
                html_img, _ = self.replace_img(html)
                return html_img
            else:
                account = kwargs["account"] if "account" in kwargs.keys() else None
                self.account = account
                title = kwargs["title"] if "title" in kwargs.keys() else None
                date = kwargs["date"] if "date" in kwargs.keys() else None
                proxies = kwargs["proxies"] if "proxies" in kwargs.keys() else None
                if self.account and title and date:
                    title = os.path.join(
                        self.save_dir,
                        self.account,
                        "[{}]-{}-{}".format(
                            self.account, date, self.replace_name(title)
                        ),
                    )
                    if os.path.isfile("{}.html".format(title)):
                        return 0
                    html = requests.get(url, proxies=proxies).text
                else:
                    html = requests.get(url, proxies=proxies).text
                    title = self.rename_title(title, html)

                if not os.path.isdir(os.path.join(self.save_dir, self.account, "imgs")):
                    os.makedirs(os.path.join(self.save_dir, self.account, "imgs"))
                if mode == 5:
                    try:
                        self.download_media(html, title)
                    except Exception as e:
                        print(e)
                        print(title)
                html_img, _ = self.replace_img(html)
                with open("{}.html".format(title), "w", encoding="utf-8") as f:
                    f.write(html_img)
                return "{}-{}公众号-文章保存成功!".format(url , self.account)
        else:
            print("please input correct mode num")
            return "保存成功"

if __name__ == "__main__":
    # mode: int
    # 运行模式
    # 1: 返回html源码，不下载图片
    # 2: 返回html源码，下载图片但不替换图片路径
    # 3: 返回html源码，下载图片且替换图片路径
    # 4: 保存html源码，下载图片且替换图片路径
    # 5: 保存html源码，下载图片且替换图片路径，并下载视频与音频
    # 6: 返回html源码，不下载图片，替换src和图片为web
    url = input("文章的网页链接：")
    mode = input("运行模式：")
    uh = Url2Html(save_dir="公众号")
    s = uh.run(url, mode=6)
    print(s)
