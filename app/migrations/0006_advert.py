# Generated by Django 4.2 on 2024-08-06 00:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0005_siteinfo_show'),
    ]

    operations = [
        migrations.CreateModel(
            name='Advert',
            fields=[
                ('nid', models.AutoField(primary_key=True, serialize=False)),
                ('title', models.CharField(max_length=32, null=True, verbose_name='产品名称')),
                ('href', models.URLField(verbose_name='跳转链接')),
                ('img', models.FileField(blank=True, help_text='单图', null=True, upload_to='advert/', verbose_name='图片地址')),
                ('img_list', models.TextField(blank=True, help_text='上传图片请用线上地址，使用；隔开多张图片', null=True, verbose_name='图片组')),
                ('is_show', models.BooleanField(default=False, verbose_name='是否展示')),
            ],
            options={
                'verbose_name_plural': '其他旅游App',
            },
        ),
    ]
