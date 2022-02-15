from django.shortcuts import render
from .models import Quiz
from django.http import JsonResponse
from django.views.generic.list import ListView
from questions.models import Question, Answer
from results.models import Result
import requests
from django.http.response import JsonResponse
from django.db import models, transaction

@transaction.atomic
def getapi(request):
    response= requests.get('https://opentdb.com/api.php?amount=50&category=17&difficulty=medium&type=multiple')
    for ques in response.json()['results']:
        question = Question.objects.create(text= ques['question'],quiz_id = '6')
        Answer.objects.create(text=ques['correct_answer'],correct=1,question_id=question.id)
        for ans in ques['incorrect_answers']:
            Answer.objects.create(text=ans,correct=0,question_id=question.id)
    return JsonResponse({"message": "sucessfully imported"})

# Create your views here.
class QuizListView(ListView):
    model = Quiz
    template_name = 'quizzes/main.html'

def quiz_view(request, pk):
    quiz =Quiz.objects.get(pk=pk)
    return render(request, 'quizzes/quiz.html', {'obj': quiz})

def quiz_data_view(request, pk):
    quiz = Quiz.objects.get(pk=pk)
    questions = []
    for q in quiz.get_questions():
        answers = []
        for a in q.get_answers():
            answers.append(a.text)
        questions.append({str(q): answers})
    return JsonResponse({
        'data': questions,
        'time': quiz.time,
    })


def save_quiz_view(request, pk):
    if request.is_ajax():
        questions = []
        data = request.POST
        data_ = dict(data.lists())

        data_.pop('csrfmiddlewaretoken')

        for k in data_.keys():
            print('key: ', k)
            question = Question.objects.get(text=k)
            questions.append(question)
        print(questions)

        user = request.user
        quiz = Quiz.objects.get(pk=pk)

        score = 0
        multiplier = 100 / quiz.number_of_questions
        results = []
        correct_answer = None

        for q in questions:
            a_selected = request.POST.get(q.text)

            if a_selected != "":
                question_answers = Answer.objects.filter(question=q)
                for a in question_answers:
                    if a_selected == a.text:
                        if a.correct:
                            score += 1
                            correct_answer = a.text
                    else:
                        if a.correct:
                            correct_answer = a.text

                results.append({str(q): {'correct_answer': correct_answer, 'answered': a_selected}})
            else:
                results.append({str(q): 'not answered'})

        score_ = score * multiplier
        Result.objects.create(quiz=quiz, user=user, score=score_)

        if score_ >= quiz.required_score_to_pass:
            return JsonResponse({'passed': True, 'score': score_, 'results': results})
        else:
            return JsonResponse({'passed': False, 'score': score_, 'results': results})
