from django.contrib import admin
from questionset.models import *

# Register your models here.
class PaperInline(admin.TabularInline):
    model = Paper

class ExamInline(admin.TabularInline):
    model = Exam

class QuestionInline(admin.TabularInline):
    model = Question

class OptionInline(admin.TabularInline):
    model = Option
    fields = ('correct_answer','opt_marathi','opt_english','opt_image')
    max_num = 4
    min_num = 4



@admin.register(Exam)
class ExamAdmin(admin.ModelAdmin):
    inlines = [
    PaperInline,
    ]
    fields = (('name', 'type'), 'year', 'active')
    list_display = ('upper_case_name', 'year','type','num_papers','active')
    #list_editable = ('active',)
    list_filter = ('type','year','active')
    radio_fields = {"type": admin.HORIZONTAL}
    search_fields = ['name']

@admin.register(Year)
class YearAdmin(admin.ModelAdmin):
    inlines = [
        ExamInline,
    ]
    list_display = ('year','num_of_exams','active')

@admin.register(Question)
class QuestionAdmin(admin.ModelAdmin):
    class Media:
        js = ("jquery_3.3.1.js","admin_myfun.js",)

    inlines = [
    OptionInline,
    ]

    fields = (('paper','que_num','paragraph'),('question_marathi', 'question_english','question_img'), 'tags', 'active')
    list_display = ('que_num','question_marathi','question_english','num_options')
    list_display_links = ('que_num','question_marathi','question_english')
    list_filter = ('paper','active')

"""
    def get_readonly_fields(self, request, obj=None):
        if obj:
            return ['paper']
        else:
            return []
"""

#admin.site.register(Exam, ExamAdmin)

@admin.register(Paper)
class PaperAdmin(admin.ModelAdmin):
    #added_questions.allow_tags=True
    list_display = ('name','exam','paper_type_ret','qc_level', 'added_questions','total_questions')
    search_fields = ['name']


@admin.register(Option)
class OptionAdmin(admin.ModelAdmin):
    list_display = ('opt_marathi','opt_english')


@admin.register(Paragraph)
class ParagraphAdmin(admin.ModelAdmin):
    list_display = ('name','paper')
