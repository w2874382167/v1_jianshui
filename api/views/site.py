from django.shortcuts import render
from django.http import JsonResponse
from app.models import *        # 数据库
from django.views import View  # CBV

class addSiteView(View):
    def post(self, request):
        res = {
            'msg': "添加成功",
            'code': 0
        }
        data = request.data
        try:
            title = data['title']  # 标题
            if not title:
                res['msg'] = "请输入标题"
                return JsonResponse(res)
            href = data['href']  # 网页链接
            if not href:
                res['msg'] = "请输入网址"
                return JsonResponse(res)
            # 检查是否已存在相同的网址
            if SiteNav.objects.filter(href=href).exists():
                res['msg'] = "网址已被添加"
                return JsonResponse(res)
            abstract = data['abstract']
            if not abstract:
                res['msg'] = "请输入网址简介，让别人更容易知道哦~"
                return JsonResponse(res)
            icon_href = data['icon_href']
            if not icon_href:
                res['msg'] = "有图标的网址更能让人知道干嘛的哦~"
                return JsonResponse(res)
            tags = data['tag']
            if not tags:
                res['msg'] = "抱歉，我不知道要把您的网址放哪里唉~"
                return JsonResponse(res)
            dicts = {
                'title': title,
                'abstract': abstract,
                'icon_href': icon_href,
                'href': href,
            }
            site_obj = SiteNav.objects.create(**dicts)
            for tag in tags:
                site_obj.tag.add(tag)
            res['code'] = 1
        except Exception as e:
            res['msg'] = str(e)
        return JsonResponse(res)