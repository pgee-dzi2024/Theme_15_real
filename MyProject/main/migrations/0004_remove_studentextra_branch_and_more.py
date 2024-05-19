# Generated by Django 4.2.13 on 2024-05-19 18:05

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('main', '0003_alter_book_options_alter_issuedbook_options_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='studentextra',
            name='branch',
        ),
        migrations.AlterField(
            model_name='studentextra',
            name='enrollment',
            field=models.CharField(max_length=40, verbose_name='Бележка'),
        ),
        migrations.AlterField(
            model_name='studentextra',
            name='user',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Читател'),
        ),
    ]
