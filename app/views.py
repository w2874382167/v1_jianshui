from django.shortcuts import render
from django.shortcuts import redirect  # 刷新页面

from django.contrib import auth  # 登录_数据库

from app.models import *  # 数据库

from app.templatetags.pagination import Pagination  # 文章分页器

from datetime import date
from app.templatetags.viewsHelp import get_client_ip, get_jieqi_index # 获取ip  节气
# Create your views here.


# 首页
def index(request):
    # 所有新闻
    article_list = Articles.objects.filter(status=1)  # 所有文章，已发布的
    # 推荐的新闻
    new_list = Articles.objects.filter(recommend=True, category=1)[:6]  # # 新闻上推荐
    # 推荐的游玩
    play_list = Articles.objects.filter(recommend=True, category=2)[:6]  # # 游玩上推荐

    # 分页器
    query_parms = request.GET.copy()
    page = Pagination(
        current_page=request.GET.get('page'),
        all_count=article_list.count(),
        base_url=request.path_info,
        query_params=query_parms,
        per_page=4,
        pager_page_count=7
    )
    article_list = article_list[page.start():page.end()]

    # 标签
    tag_list = Tags.objects.all()[:15]
    # 建水名片
    site = SiteInfo.objects.get(show=True)
    # 24节气
    today = date.today()
    i = get_jieqi_index(today)
    image_path = f'/static/my/img/24_hourse/{i}.png'
    # 其他App
    other_app = Advert.objects.get(is_show=True)
    # 站点信息
    # 用户数量
    sum_user = UserInfo.objects.count()
    # 文章数量
    sum_article = Articles.objects.count()
    return render(request, 'index.html', locals())

# 登录
def login(request):
    return render(request, 'login.html')

# 注册
def signup(request):
    return render(request, 'login.html')


# 注销
def logout(request):
    auth.logout(request)
    return redirect('/')  # 刷新页面


# 文章界面
# locals()表示全部内容包括request在内
def article(request, nid):
    article_query = Articles.objects.filter(nid=nid)
    print("加载的文章是:", article_query)
    if not  article_query:
        return redirect('/')  # 没有找到文章重定向到首页
    article = article_query.first()
    return render(request, 'article.html', locals())


# 新闻界面
def news(request):
    return render(request, 'news.html')

# 网站导航
def sitenav(request):
    # 获取所有标签数据，并附带其关联的网站导航数据
    nav_tags = NavTags.objects.prefetch_related('sitenav_set').all()
    return render(request, 'sitenav.html',locals())


# 大模型
def model(request):
    return render(request, 'model.html')


# 后台
def backend(request):
    if not request.user.username:
        return redirect('/login/')  # 没有登录，不给访问后台
    # ip信息
    ip = get_client_ip(request)
    print(ip)
    collect_list = request.user.collects.all()  # 拿到收藏的文章，是自己相关的
    return render(request, 'backend/backend.html', locals())


# 添加文章
def add_article(request):
    if not request.user.username:
        return redirect('/login/')  # 没有登录，不给访问后台
    # 拿到所有的分类标签
    tags_list = Tags.objects.all()
    # 拿到所有的文章封面
    cover_list = Cover.objects.all()
    return render(request, 'backend/add_article.html', locals())


# 修改头像
def edit_avator(request):
    if not request.user.username:
        return redirect('/login')  # 没有登录，不给访问后台
    # 拿到所有的头像
    avatar_list = Avatars.objects.all()
    print(avatar_list)
    return render(request, 'backend/edit_avator.html', locals())