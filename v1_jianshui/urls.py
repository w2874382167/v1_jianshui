"""
URL configuration for v1_jianshui project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from app import views

# 将post请求分发出去
from django.urls import include, re_path

# 文件媒体路由
from django.conf import settings
from django.views.static import serve

urlpatterns = [
    path('', views.index),
    path('news/', views.news),           # 新闻
    path('model/', views.model),           # 新闻
    path('sitenav/', views.sitenav),     # 网站导航
    path('login/', views.login),
    path('logout/', views.logout),
    path('signup/', views.signup),
    path('admin/', admin.site.urls),  # 后台管理
    path('backend/', views.backend),  # 后台
    path('backend/add_article/', views.add_article),  # 写文章
    path('backend/edit_avator/', views.edit_avator),  # 修改头像
    re_path(r'^article/(?P<nid>\d+)/', views.article),  # 拿到article并接收后面的数字

    # 路由分发
    # 所有api开头的请求，将到api路由处理
    re_path(r'^api/', include('api.urls')),

    # 上传文件配置
    re_path(r'media/(?P<path>.*)$', serve, {'document_root':settings.MEDIA_ROOT}),
]
