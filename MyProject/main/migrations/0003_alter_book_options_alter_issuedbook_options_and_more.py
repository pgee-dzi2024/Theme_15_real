# Generated by Django 4.2.13 on 2024-05-19 18:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0002_issuedbook_book_alter_book_author_and_more'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='book',
            options={'verbose_name': 'Книга', 'verbose_name_plural': 'Книги'},
        ),
        migrations.AlterModelOptions(
            name='issuedbook',
            options={'verbose_name': 'Дадена книга', 'verbose_name_plural': 'Дадени книги'},
        ),
        migrations.AlterModelOptions(
            name='studentextra',
            options={'verbose_name': 'Читател', 'verbose_name_plural': 'Читатели'},
        ),
        migrations.RemoveField(
            model_name='issuedbook',
            name='book',
        ),
        migrations.AlterField(
            model_name='book',
            name='category',
            field=models.CharField(choices=[('образование', 'Образование'), ('периодични', 'Периодични издания'), ('комикс', 'Комикси'), ('биография', 'Биографични'), ('историческа', 'История'), ('роман', 'Романи'), ('фентъзи', 'Фентъзи'), ('трилър', 'Трилъри'), ('романтка', 'Романтика'), ('фантастика', 'Научна фантастика')], default='образование', max_length=30, verbose_name='Категория'),
        ),
    ]
