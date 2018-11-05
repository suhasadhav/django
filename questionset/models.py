from django.db import models
from multiselectfield import MultiSelectField
from django.core.exceptions import ValidationError
from django.utils.html import format_html

# Create your models here.

#Languages used in paper model
LANGUAUGES = (('MARATHI', 'MARATHI'),('ENGLISH', 'ENGLISH'))

#PAPER_TYPE used in exam model
PAPER_TYPE = (('PRELIM', 'PRELIM'),('MAINS', 'MAINS'))

#Options
OPTION_CHOICES = (('A', 'A'),('B', 'B'),('C', 'C'),('D', 'D'))


QC_LEVELS = (
('Not Started','Not Started'),
('First','First'),
('Second','Second'),
('Final','Final'),
)

"""
Year Model will have years
e.g. 2016, 2017
"""

class Year(models.Model):
    year = models.IntegerField(default=2010, unique=True)
    active = models.BooleanField(default=True)

    def __str__(self):
        return str(self.year)

    #Returns number of exams in year
    def num_of_exams(self):
        num = Exam.objects.filter(year=self).count()
        return ("%s" % (num))

    num_of_exams.short_description = 'Exams#'

"""
Exam Model will have particular exam
e.g. PSI-PRELIM-2018
"""
class Exam(models.Model):
    name = models.CharField(max_length=30, unique=True)
    type = models.CharField(max_length=15, choices=PAPER_TYPE, default='PRELIM')
    year = models.ForeignKey(Year, limit_choices_to={'active': True}, on_delete=models.SET_NULL, null=True)
    active = models.BooleanField(default=True)

    def __str__(self):
        return ("%s" % (self.name)).upper()

    def save(self, force_insert=False, force_update=False):
        self.name = self.name.upper()
        super(Exam, self).save(force_insert, force_update)

    def upper_case_name(self):
        return ("%s" % (self.name)).upper()

    # Number of papers in Exam
    def num_papers(self):
        paper_count = Paper.objects.filter(exam=self).count()
        return ("%s" % (paper_count))

    num_papers.short_description = 'Paper#'
    upper_case_name.short_description = 'Name'


"""
Paper Model will have particular paper linked to exam
e.g. Paper-I(General Science)
"""
class Paper(models.Model):
    name = models.CharField(max_length=200, null=True)
    exam = models.ForeignKey(Exam, limit_choices_to={'active': True}, on_delete=models.SET_NULL, null=True)
    languauge = MultiSelectField(choices=LANGUAUGES, max_choices=2)
    total_questions = models.IntegerField(default=100)
    qc_level = models.CharField(max_length=50, choices=QC_LEVELS, default='Not Started')
    active = models.BooleanField(default=True)

    class Meta:
        unique_together = (('name','exam'))

    def __str__(self):
        return self.exam.name + "-" +self.name + "-" + str(self.exam.year) + "(" + self.exam.type + ")"

    ## Paper Type return for List display of paper {PRELIM/MAINS}
    def paper_type_ret(self):
        return ("%s" % (self.exam.type)).upper()

    ## Return number of added questions
    def added_questions(self):
        que = Question.objects.filter(paper=self).count()
        color = 'orange'
        if self.total_questions == que:
            color = 'green'

        return format_html(
        '<div style="width:100%%; height:100%%; background-color:{}; width:30px; padding:5px;color:white;">{}</div>',
        color,
        str(que).upper()
        )

    paper_type_ret.short_description = 'Type'
    added_questions.short_description = 'Questions#'


class Paragraph(models.Model):
    name = models.CharField(max_length=200)
    paper = models.ForeignKey(Paper, limit_choices_to={'active': True}, on_delete=models.SET_NULL, null=True,blank=False)
    para_marathi = models.TextField(null=True)
    para_english = models.TextField(null=True)
    para_img = models.ImageField(blank=True, null=True, upload_to='paragraphs/%Y/%m/%d/')
    active = models.BooleanField(default=True)

    def __str__(self):
        string = self.paper.exam.name + "-" +self.paper.name + "-" + str(self.paper.exam.year) + "(" + self.paper.exam.type + ")"
        return string + " " + self.name

    def get_name(self):
        string = self.paper.exam.name + "-" +self.paper.name + "-" + str(self.paper.exam.year) + "(" + self.paper.exam.type + ")"
        return string + " " + self.name


"""
Question Model will have questions linked to Paper
e.g. Question
"""
class Question(models.Model):
    que_num = models.IntegerField()
    paragraph = models.ForeignKey(Paragraph, limit_choices_to={'active': True}, on_delete=models.SET_NULL, null=True, blank=True)
    paper = models.ForeignKey(Paper, limit_choices_to={'active': True}, on_delete=models.SET_NULL, null=True,blank=False)
    question_marathi = models.TextField(null=True)
    question_english = models.TextField(null=True)
    question_img = models.ImageField(blank=True, null=True, upload_to='questions/%Y/%m/%d/')
    tags = MultiSelectField(choices=LANGUAUGES, max_choices=10)
    active = models.BooleanField(default=True)

    def __str__(self):
        return self.question_english
    class Meta:
        unique_together = (('que_num','paper'))

    def clean(self):
        if Question.objects.filter(paper=self.paper).count()>=self.paper.total_questions:
            raise ValidationError('All questions added as per records')
        que_para = self.paper
        if self.paragraph:
            paper_para = Paragraph.objects.filter(pk=self.paragraph.pk)
            if que_para.pk != paper_para[0].paper.pk:
                raise ValidationError('Paragraph does not belongs to selected paper')



    ## Returns Number of options for a question
    def num_options(self):
        num = Option.objects.filter(question=self).count()
        return ("%s" % (num))
    num_options.short_description = 'Option#'


class Option(models.Model):
    question = models.ForeignKey(Question, limit_choices_to={'active': True}, on_delete=models.SET_NULL, null=True)
    opt_marathi = models.TextField(null=True)
    opt_english = models.TextField(null=True)
    opt_image =  models.ImageField(blank=True, null=True, upload_to='options/%Y/%m/%d/')
    correct_answer = models.BooleanField(default=False)
    active = models.BooleanField(default=True)
