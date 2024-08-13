from django.contrib import admin
from django.utils.safestring import mark_safe

# Register your models here.
# django自带的后台管理系统查看表单
from app.models import *

# 文章
class ArticleAdmin(admin.ModelAdmin):
    def get_cover(self):
        if self.cover:
            return mark_safe(f'<img src="{self.cover.url.url}" style="height:50px;border-radius:5px;')

    get_cover.short_description = '文章封面'

    def get_tag(self):
        tag_list = '，'.join([tag.title for tag in self.tag.all()])
        return tag_list

    get_tag.short_description = '文章标签'
    list_display = ['title', get_cover, 'author', get_tag, 'change_date', 'category', 'recommend']


# 标签
class TagsAdmin(admin.ModelAdmin):
    list_display = ['nid', 'title']


# 文章封面
class CoverAdmin(admin.ModelAdmin):
    def get_img(self):
        if self.url:
            return mark_safe(f"""<img src="{self.url.url}" style="height:50px;border-radius:5px;margin-right:5px;">""")
        return ''

    get_img.short_description = '文章封面'

    list_display = ['url', get_img]


class UserInfoAdmin(admin.ModelAdmin):
    def get_img(self):
        if self.avatar_url:
            return mark_safe(
                f"""<img src="{self.avatar_url}" style="height:50px;border-radius:6px;margin-right:5px;">""")
        return ''

    get_img.short_description = '头像'
    list_display = ['username', 'sex', get_img, 'qq_num', 'is_superuser']


# 名片
class SiteInfoAdmin(admin.ModelAdmin):
    def get_url(self):
        if self.site_url:
            return mark_safe(f"""<a href="{self.site_url}">{self.name}</a>""")
        return ''

    get_url.short_description = '网站地址'
    list_display = ['name', 'nameObj', 'addr', get_url, 'show']


class MenuAdmin(admin.ModelAdmin):

    def get_menu_url(self, obj):
        # list = [f"img< src='{i.url.url}' style='height:50px;border-radius:5px;margin-right:5px;'>"for i in self.menu_url.all()]
        list = [f"<img src='{i.url.url}' style='height:50px;border-radius:5px;margin-right:5px;'>"
                for i in obj.menu_url.all()]
        return mark_safe(''.join(list))

    get_menu_url.short_description = '图片组'

    list_display = ['menu_title', 'menu_title_en', 'title',
                    'rotation', 'abstract_time',
                    'menu_time', 'get_menu_url']


class MenuImgAdmin(admin.ModelAdmin):

    def get_img(self, obj):
        if obj.url:
            return mark_safe(f"""<img src="{obj.url.url}" style="height:50px;border-radius:5px;margin-right:5px;">""")

    get_img.short_description = '背景图'

    list_display = ['url', 'get_img']


class AdvertAdmin(admin.ModelAdmin):
    def get_img(self):
        if self.img:
            return mark_safe(f"""<img src="{self.img}" style="height:50px;border-radius:5px;margin-right:5px;">""")

    get_img.short_description = "展示图片"

    def get_url(self):
        if self.href:
            return mark_safe(f"""<a href="{self.href}">{self.real_title}</a>""")
        return ''

    get_url.short_description = '网站链接'
    list_display = ['title', get_url, get_img, 'is_show']


class AvatarsAdmin(admin.ModelAdmin):
    def get_img(self):
        if self.url:
            return mark_safe(f"""<img src="{self.url.url}" style="height:50px;border-radius:5px;margin-right:5px;">""")

    get_img.short_description = "头像示例"
    list_display = ['url', get_img]


class NavTagsAdmin(admin.ModelAdmin):
    def get_icon(self):
        if self.iconText:
            return mark_safe(f"""<i class="{self.iconText} style="width:20px;"></i>""")

    get_icon.short_description = '标签样式'
    list_display = ['title', get_icon]


class SiteNavAdmin(admin.ModelAdmin):
    def get_icon(self):
        if self.icon_href:
            return mark_safe(f"""<img src="{self.icon_href}" style="width:20px;">""")

    get_icon.short_description = "网站图标"

    def get_tag(self):
        tag_list = '，'.join([tag.title for tag in self.tag.all()])
        return tag_list

    get_tag.short_description = "网站类属"

    def get_link(self):
        if self.href:
            return mark_safe(f"""<a href="{self.href}" style="none">点我跳转</a>""")
        return ''

    get_link.short_description = "网站链接"
    list_display = ['title', get_icon, get_tag, get_link]


admin.site.register(Articles, ArticleAdmin)  # 文章
admin.site.register(Tags, TagsAdmin)  # 标签
admin.site.register(Cover, CoverAdmin)  # 文章封面
admin.site.register(UserInfo, UserInfoAdmin)  # 用户表
admin.site.register(SiteInfo, SiteInfoAdmin)  # 名片
admin.site.register(Menu, MenuAdmin)  # 轮播图片设置
admin.site.register(MenuImg, MenuImgAdmin)  # 轮播图片
admin.site.register(Advert, AdvertAdmin)  # 其他App
admin.site.register(Avatars, AvatarsAdmin)  # 用户头像
admin.site.register(NavTags, NavTagsAdmin)  # 网站标签
admin.site.register(SiteNav, SiteNavAdmin)  # 网站导航
