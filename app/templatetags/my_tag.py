from django import template

from app.models import Menu

register = template.Library()  # 进行注册


# 自定义标签，自定义过滤器编写在这个页面

# 自定义过滤器
# @register.filter
# def add1(item):
#     return int(item) + 1

@register.inclusion_tag('my_tag/headers.html') # 自定模型文件
def banner(menu_name, article=None):
    print("轮播图加载在", menu_name, article)
    if article:
        # 拿文章的封面
        cover = article.cover.url.url  # 拿到文件字段，在取路由字符
        print(cover)
        img_list = [cover]
        title = article.title
        text_list = [article.abstract[:30]]
        return locals()
    # header
    menu_obj = Menu.objects.get(menu_title_en=menu_name)
    # 背景图片轮播时间
    menu_time = menu_obj.menu_time
    banner_time = menu_obj.abstract_time
    # 图片
    img_list = [i.url.url for i in menu_obj.menu_url.all()]
    title = menu_obj.title
    text_list = menu_obj.abstract.replace("!", "；").replace("\n", "；").split("；")
    print(text_list)
    # 如果不轮播
    if not menu_obj.rotation:
        text_list = text_list[0:1]
        banner_time=0

    return locals()