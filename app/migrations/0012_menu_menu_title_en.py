# Generated by Django 4.2 on 2024-08-10 14:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0011_remove_menu_menu_rotation_remove_menu_menu_title_en_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='menu',
            name='menu_title_en',
            field=models.CharField(max_length=32, null=True, verbose_name='菜单英文名称'),
        ),
    ]
