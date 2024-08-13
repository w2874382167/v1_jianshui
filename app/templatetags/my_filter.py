from django import template

register = template.Library()  # 进行注册

# 自定义过滤器
@register.filter
def is_user_collect(article, request):
    """
    判断用户是否收藏文章，收藏将让文章收藏的图片常亮
    :param article:
    :param requset:
    :return:
    """
    if str(request.user) == "AnonymousUser":
        # 没有登录
        return ''
    if article in request.user.collects.all():
        # 已经登录，并且已经收藏
        return 'show'
    return ''