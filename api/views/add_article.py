from django.views import View  # CBV
from django.http import JsonResponse
from app.models import *
from django.db.models import F  # 计算点赞数量用到


# 写文章
class AddArticleView(View):
    def post(self, request):
        res = {
            'msg': "文章发布成功",
            'code': "1"
        }
        data: dict = request.data
        print("写文章收到：", data)
        title = data.get('title')  # 标题
        if not title:
            res['msg'] = "请输入文章标题"
            return JsonResponse(res)
        author = data.get('author')  # 作者
        source = data.get('source')  # 来源
        abstract = data.get('abstract')  # 简介
        category_id = data.get('category_id')  # 分类
        label = data.get('label')  # 标签
        cover_id = data.get('cover_id')  # 封面
        if not cover_id:
            cover_id = "1"
        recommend = data.get('recommend')  # 是否推荐
        status = data.get('status')  # 是否推荐
        if status:
            status = 1
        else:
            status = 0
        link = data.get('link')  # 链接
        content = data.get('textarea')  # 内容
        dicts = {
            'title': title,
            'author': author,
            'source': source,
            'abstract': abstract,
            'category': category_id,
            'recommend': recommend,
            'cover_id': cover_id,
            'link': link,
            'content': content,
            'status': status,
        }
        article_obj = Articles.objects.create(**dicts)
        for lab in label:
            # print(lab)
            article_obj.tag.add(lab)
        res['code'] = 0
        return JsonResponse(res)


# 文章点赞
class ArticlesDiggView(View):
    def post(self, request, nid):
        # nid
        res = {
            'msg': '点赞成功',
            'code': '1',
        }
        # if not request.user.is_authenticated:
        #     res['msg'] = '请先登录再点赞'
        #     return JsonResponse(res)
        digg_querry = Articles.objects.filter(nid=nid)
        digg_querry.update(digg_count=F('digg_count') + 1)
        digg_count = digg_querry.first().digg_count

        res['code'] = 0
        res['data'] = digg_count  # 点赞数量
        return JsonResponse(res)


# 文章收藏
class ArticlesCollectView(View):
    """
    要登录
    一个人只能收藏一次
    同样的请求,一次点击收藏，在点一次取消收藏
    """
    def post(self, request, nid):
        # nid
        res = {
            'msg': '成功收藏',
            'code': '1',
        }
        if not request.user.is_authenticated:
            res['msg'] = '请先登录再点赞'
            return JsonResponse(res)
        # 判断用户是否收藏过
        flag = request.user.collects.filter(nid=nid)
        print("是否已经收藏", flag)
        num = 1
        if not flag:
            # 添加收藏
            res['is_collect'] = True  # 标志2，是收藏
            request.user.collects.add(nid)
        else:
            # 取消收藏
            res['msg'] = "文章取消收藏"
            res['is_collect'] = False  # 标志2，是取消收藏
            num = -1
            request.user.collects.remove(nid)

        collect_querry = Articles.objects.filter(nid=nid)
        collect_querry.update(collects_count=F('collects_count') + num)
        collect_count = collect_querry.first().collects_count
        res['data'] = collect_count
        res['code'] = 0
        return JsonResponse(res)
