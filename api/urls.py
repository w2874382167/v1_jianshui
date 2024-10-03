from django.contrib import admin
from django.urls import path
from api.views import login, add_article, news, user, site, API, weather
from django.urls import re_path

# post走api

urlpatterns = [
    path('login/', login.LoginView.as_view()),  # 登录
    # path('logout/', views.logout), 注销登录走的是视图
    path('signup/', login.SignupView.as_view()),  # 注册
    path('article/', add_article.AddArticleView.as_view()),  # 添加文章
    re_path('article/digg/(?P<nid>\d+)/', add_article.ArticlesDiggView.as_view()),  # 文章点赞
    re_path('article/collect/(?P<nid>\d+)/', add_article.ArticlesCollectView.as_view()),  # 文章收藏
    re_path('news/(?P<nid>\d+)/', news.NewsView.as_view()),  # 新闻

    path('user/info', user.editUserView.as_view()),  # 完善个人信息
    path('edit_avatar/', user.EditAvatarView.as_view()),  # 修改头像
    path('site/add/', site.addSiteView.as_view()),  # 修改头像

    # 大模型通道
    path('model/historylist/', API.historylistView.as_view()),  # 历史对话
    path('model/chatlist/<str:date>/', API.chatlistView.as_view()),  # 聊天记录
    path('model/delete/<str:date>/', API.deletechatView.as_view()),  # 删除聊天记录
    path('model/issue/', API.issueView.as_view()),  # 删除聊天记录
    path('weather/', weather.WeatherView.as_view()),  # 天气
    path('onlinepeople/', weather.OnlinePeopleListView.as_view()),  # 在线人数
]
