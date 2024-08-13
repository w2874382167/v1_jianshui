from django.db import models
from django.contrib.auth.models import AbstractUser
from django.dispatch.dispatcher import receiver  # 删除文件
from django.db.models.signals import pre_delete  # 删除文件


# Create your models here.
# 用户表
class UserInfo(AbstractUser):
    """
    nick:昵称
    avatar_url:用户头像
    sign_status:注册来源
        account_status:账号的状态
    avatar：头像表
        collects：收藏的文章
        navs:用户收藏的网站
    """
    nid = models.AutoField(primary_key=True)
    qq_num = models.TextField(verbose_name='QQ号码', null=True, blank=True)
    sex_choice = (
        (0, '男'),
        (1, '女')
    )
    sex = models.IntegerField(default=0, choices=sex_choice, verbose_name='用户性别')
    account_status_choice = (
        (0, '账号正常'),
        (1, '账号异常'),
        (2, '账号被封禁'),
    )
    account_status = models.IntegerField(default=0, choices=account_status_choice, verbose_name='账号状态')
    avatar_url = models.URLField(verbose_name='用户头像', help_text='可以是其他平台的头像', null=True, blank=True)
    collects = models.ManyToManyField(
        to='Articles',
        verbose_name='收藏的文章',  # 用户收藏的文章
        blank=True
    )

    def __str__(self):
        return self.username

    class Meta:
        verbose_name_plural = '用户'


# 用户头像表
class Avatars(models.Model):
    """
    url: 头像的链接，完整url: .url
    """
    nid = models.AutoField(primary_key=True)
    url = models.FileField(verbose_name='用户头像地址', upload_to='avatars/')

    def __str__(self):
        return str(self.url)

    class Meta:
        verbose_name_plural = '用户头像'


# 删除头像
# 定义一个函数，删除图片的时候可以把文件一起删掉
@receiver(pre_delete, sender=Avatars)  # sender=你要删除或修改文件字段所在的类**
def avatar_delete(instance, **kwargs):  # 函数名随意
    # print('进入文件删除方法，删的是', instance.url)
    instance.url.delete(False)  # file是保存文件或图片的字段名**


# 文章表
class Articles(models.Model):
    """
    title：文章标题
    abstract：文章简介
    content：文章内容
    create_date：创建日期
    change_date：编辑的最新日期
        status：文章的状态，默认都是已发布
    recommend：是否上推荐
    cover：文章封面  一对多
        look_count：浏览量
    comment_count：评论数
    digg_count：点赞数
        collects_count：收藏数
        category：文章分类
    tag：文章标签 多对多
        pwd：文章密码
    author：文章的作者  后续可以做一对多，关联用户表
    source：文章的来源
    link：来源地址
    word：文章字数
    """
    nid = models.AutoField(primary_key=True)
    title = models.CharField(verbose_name='标题', max_length=32, null=True, blank=True)
    abstract = models.CharField(verbose_name='文章简介', max_length=128, null=True, blank=True)
    content = models.TextField(verbose_name='文章内容', null=True, blank=True)
    create_date = models.DateTimeField(verbose_name='文章发布日期', auto_now_add=True, null=True)
    change_date = models.DateTimeField(verbose_name='文章修改日期', auto_now=True, null=True)
    status_choice = (
        (0, '未发布'),
        (1, '已发布'),
    )
    status = models.IntegerField(verbose_name='文章保存状态', choices=status_choice)  # 保存
    recommend = models.BooleanField(verbose_name='是否上推荐', default=True)  # 精选文章位置
    cover = models.ForeignKey(  # 封面
        to='Cover',
        to_field='nid',
        on_delete=models.SET_NULL,
        verbose_name='文章封面', null=True, blank=True
    )
    look_count = models.IntegerField(verbose_name='文章阅读量', default=0)
    digg_count = models.IntegerField(verbose_name='文章点赞量', default=0)
    collects_count = models.IntegerField(verbose_name='文章收藏数', default=0)
    category_choice = (
        (1, '新闻速览'),
        (2, '游玩'),
        (3, '其他'),
    )
    category = models.IntegerField(verbose_name='文章分类', choices=category_choice, null=True, blank=True)
    tag = models.ManyToManyField(  # 标签
        to='Tags',
        verbose_name='文章标签',
        blank=True
    )
    author = models.CharField(max_length=16, verbose_name='作者', null=True, blank=True)
    source = models.CharField(max_length=32, verbose_name='来源', null=True, blank=True)

    link = models.URLField(verbose_name='文章链接', null=True, blank=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name_plural = '文章'


# 文章封面
class Cover(models.Model):
    nid = models.AutoField(primary_key=True)
    url = models.FileField(verbose_name='文章封面地址', upload_to='article_img/')

    # url = models.FileField(verbose_name='文章封面地址')
    def __str__(self):
        return str(self.url)

    class Meta:
        verbose_name_plural = '文章封面'


# 其他App链接
class Advert(models.Model):
    nid = models.AutoField(primary_key=True)
    title = models.CharField(verbose_name='产品名称', max_length=32, null=True)
    real_title = models.CharField(verbose_name='网站名字', max_length=32, null=True)
    href = models.URLField(verbose_name='跳转链接')
    img = models.URLField(verbose_name='图片地址', null=True, blank=True, help_text='单图')
    is_show = models.BooleanField(verbose_name='是否展示', default=False)

    class Meta:
        verbose_name_plural = '其他旅游App'

    def __str__(self):
        return self.title


# 标签表
class Tags(models.Model):
    nid = models.AutoField(primary_key=True)
    title = models.CharField(max_length=16, verbose_name='标签名字')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name_plural = '文章标签'


# 网站基础信息
class SiteInfo(models.Model):
    nid = models.AutoField(primary_key=True)
    name = models.CharField(max_length=32, verbose_name='名字')
    nameObj = models.CharField(max_length=64, verbose_name='美名',blank=True)
    site_url = models.CharField(max_length=32, verbose_name='网站链接')
    addr = models.CharField(max_length=16, verbose_name='地址')
    show = models.BooleanField(default=False, verbose_name='是否展示')

    class Meta:
        verbose_name_plural = '网站基础信息'

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):
        if self.show:
            # 如果这个条目被设置为展示，取消其他条目的展示状态
            SiteInfo.objects.filter(show=True).update(show=False)
        super().save(*args, **kwargs)


# 站点背景(轮播图片控制)
class Menu(models.Model):
    nid = models.AutoField(primary_key=True)
    menu_title = models.CharField(verbose_name='菜单名称', max_length=16, null=True)
    menu_title_en = models.CharField(verbose_name='菜单英文名称', max_length=32, null=True)
    title = models.CharField(verbose_name='文字', max_length=32, null=True)
    abstract = models.TextField(verbose_name='文字介绍', help_text='多个之间按分号区分', null=True)
    abstract_time = models.IntegerField(verbose_name='文字切换时间', help_text='单位秒，默认是8秒', default=4)
    rotation = models.BooleanField(verbose_name='是否轮播文字介绍', default=True)
    menu_url = models.ManyToManyField(
        to='MenuImg',
        verbose_name='菜单图片',
        help_text='可以多选，多选就会轮播',
    )
    menu_time = models.IntegerField(verbose_name='背景图切换时间', help_text='单位秒，默认是8秒', default=8)

    class Meta:
        verbose_name_plural = '站点背景'


# 站点背景图片
class MenuImg(models.Model):
    nid = models.AutoField(primary_key=True)
    url = models.FileField(verbose_name='图片地址', upload_to='site_bgimg/')
    dominant_hue = models.CharField(verbose_name='封面主色调', max_length=16, null=True, blank=True)
    is_dark = models.BooleanField(verbose_name='是否是深色系', null=True, blank=True)

    def __str__(self):
        return str(self.url)

    class Meta:
        verbose_name_plural = '站点背景图'


# 网站导航
class SiteNav(models.Model):
    nid = models.AutoField(primary_key=True)
    title = models.CharField(max_length=32, verbose_name='网站标题')
    abstract = models.CharField(max_length=128, verbose_name='网站简介', null=True)
    href = models.URLField(verbose_name='网站链接')
    icon_href = models.URLField(
        verbose_name='图标链接', help_text='在线链接', null=True, blank=True
    )
    create_date = models.DateTimeField(
        verbose_name='创建时间', auto_now=True
    )

    tag = models.ManyToManyField(
        to='NavTags',
        verbose_name='网站标签',
    )

    def __str__(self):
        return self.title

    class Meta:
        verbose_name_plural = '网站导航'


# 网站标签
class NavTags(models.Model):
    nid = models.AutoField(primary_key=True)
    title = models.CharField(verbose_name='网站标签名称', max_length=32)
    iconText = models.CharField(verbose_name='标签图标', max_length=64, null=True, blank=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name_plural = '网站导航标签'
