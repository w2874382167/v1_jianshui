from urllib.parse import urlencode
import math
# query_params = {'tag': "python", 'page': '1'}
# print(urlencode(query_params))

class Pagination:
    def __init__(self, current_page, all_count, base_url, query_params, per_page=20,pager_page_count = 11):
        """
        分页器
        :param current_page: 当前页码
        :param all_count: 总数据条数
        :param base_url: 原始URL
        :param query_params: 原搜索条件
        :param per_page: 一页展示几条
        :param pager_page_count: 最多显示多少个页码
        """
        self.all_count = all_count
        self.per_page = per_page

        # 计算有多少个页码
        # 1.取余
        # 2.进位
        self.current_count = math.ceil(all_count/per_page)  # 页数
        # 只能是满足的数字，字母  负数等都不行
        # 保证页码能找到
        try:
            self.current_page = int(current_page)
            if not 0 < self.current_page <= self.current_count:
                self.current_page = 1
        except Exception as e:
            print("分页器错误", e)
            self.current_page = 1

        self.base_url = base_url
        self.query_params = query_params
        self.pager_page_count = pager_page_count
        print(self.current_page, self.current_count)

        # 分页的中值
        self.half_page_count = math.ceil(self.pager_page_count/2)
        if self.current_count < self.pager_page_count:
            # 如果可分页的页码小于最大显示页码，就让可分页的页码变成可分页页码
            self.pager_page_count = self.current_count
    def start(self):   # 分页器
        return (self.current_page - 1) * self.per_page


    def end(self):
        return self.current_page * self.per_page

    def pager_html(self):
        # 计算页码的起始和结束
        # 正常在中间
        start = self.current_page - self.half_page_count
        end = self.current_page + self.half_page_count
        # print("当前页", self.current_page)
        # print("中值", self.half_page_count)
        # print("展示页数", self.pager_page_count)
        # print("总页数", self.current_count)

        if self.current_page <= self.half_page_count:
            # 在最左侧
            print("开头")
            start = 1
            end = self.pager_page_count
        if self.current_page + self.half_page_count >= self.current_count:
            # 在末尾页数
            print("末尾")
            start = self.current_count - self.pager_page_count
            end = self.current_count
        # print(start, end)
        # 生成分页
        page_list = []
        # 上一页
        if self.current_page != 1:
            self.query_params['page'] = self.current_page - 1
            li = f'<li class="active"><a href="{self.base_url}?{self.query_encode()}">上一页</a></li>'
            page_list.append(li)

        for i in range(start, end+1):
            self.query_params['page'] = str(i)
            if self.current_page == i:
                li = f'<li class="active"><a href="{self.base_url}?{self.query_encode()}">{i}</a></li>'
            else:
                li = f'<li><a href="{self.base_url}?{self.query_encode()}">{i}</a></li>'
            page_list.append(li)

        # 下一页
        if  self.current_page !=self.current_count:
            self.query_params['page'] = self.current_page + 1
            li = f'<li class="active"><a href="{self.base_url}?{self.query_encode()}">下一页</a></li>'
            page_list.append(li)
        print(page_list)

    def query_encode(self):
        """
        由于搜索条件最后时一个字典
        :return:
        """
        return urlencode(self.query_params)

if __name__ == '__main__':
    pager = Pagination(41,
               201,
               'http://www.cnblogs.com',
               {'tag': "python"},
               per_page=5)
    # print( pager.start(), pager.end())
    pager.pager_html()