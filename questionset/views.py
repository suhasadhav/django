from django.shortcuts import render
from .models import *
from django.db.models import Max


import json
from django.http import HttpResponse, JsonResponse

# Create your views here.


##AJAX request
def get_next_que_num(request):
    paper_id = request.GET.get('paper', None)
    max_que_num = 0
    para_context ={}
    if paper_id:
        paper = Paper.objects.filter(pk=paper_id)
        if paper:
            max_que_num = Question.objects.filter(paper=paper[0]).aggregate(Max('que_num'))['que_num__max']
        if not max_que_num:
            max_que_num = 0
        paragraphs = Paragraph.objects.filter(paper=paper_id)
        for para in paragraphs:
            para_context.update({para.id : para.get_name()})

    next_que_num = max_que_num + 1

    if len(para_context) > 0:
        return JsonResponse({'next_que_num':next_que_num, 'paragraph': para_context})
    else:
        return JsonResponse({'next_que_num':next_que_num})
