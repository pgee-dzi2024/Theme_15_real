from django.db import models
from django.contrib.auth.models import User
from datetime import datetime,timedelta


class StudentExtra(models.Model):
    user = models.OneToOneField(User, verbose_name='Читател', on_delete=models.CASCADE)
    enrollment = models.CharField('Бележка', max_length=40)
    #used in issue book
    def __str__(self):
        return self.user.first_name+'['+str(self.enrollment)+']'
    @property
    def get_name(self):
        return self.user.first_name
    @property
    def getuserid(self):
        return self.user.id

    class Meta:
        verbose_name = 'Читател'
        verbose_name_plural = 'Читатели'


class Book(models.Model):
    catchoice= [
        ('образование', 'Образование'),
        ('периодични', 'Периодични издания'),
        ('комикс', 'Комикси'),
        ('биография', 'Биографични'),
        ('историческа', 'История'),
        ('роман', 'Романи'),
        ('фентъзи', 'Фентъзи'),
        ('трилър', 'Трилъри'),
        ('романтка', 'Романтика'),
        ('фантастика', 'Научна фантастика')
        ]
    name = models.CharField('Заглавие',  max_length=30, default='')
    isbn = models.PositiveIntegerField('Инв. №', default=0)
    author = models.CharField('Автор', max_length=40)
    category = models.CharField('Категория', max_length=30, choices=catchoice, default='образование')

    def __str__(self):
        return str(self.name)+"["+str(self.isbn)+']'

    class Meta:
        verbose_name = 'Книга'
        verbose_name_plural = 'Книги'


def get_expiry():
    return datetime.today() + timedelta(days=15)


class IssuedBook(models.Model):
    #moved this in forms.py
    # book = models.ForeignKey(Book, verbose_name='Книга', on_delete=models.CASCADE, null=True, related_name='it')
    #enrollment=[(student.enrollment,str(student.get_name)+' ['+str(student.enrollment)+']') for student in StudentExtra.objects.all()]
    enrollment=models.CharField(max_length=30)
    #isbn=[(str(book.isbn),book.name+' ['+str(book.isbn)+']') for book in Book.objects.all()]
    isbn=models.CharField(max_length=30)
    issuedate=models.DateField(auto_now=True)
    expirydate=models.DateField(default=get_expiry)
    def __str__(self):
        return self.enrollment

    class Meta:
        verbose_name = 'Дадена книга'
        verbose_name_plural = 'Дадени книги'
