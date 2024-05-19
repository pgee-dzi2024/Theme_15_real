from django.contrib import admin
from .models import Book, StudentExtra, IssuedBook


# Register your models here.
admin.site.register(Book)


class StudentExtraAdmin(admin.ModelAdmin):
    pass


admin.site.register(StudentExtra, StudentExtraAdmin)


class IssuedBookAdmin(admin.ModelAdmin):
    pass


admin.site.register(IssuedBook, IssuedBookAdmin)
