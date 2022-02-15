from django.shortcuts import render
# from django.utils.decorators import method_decorator
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .models import Question,Answer
from .serializers import QuestionSerializer,AnswerSerializer
# from decorator.auth_decorator import token_decode

class QuestionView(APIView):
    
    # permission_classes = (IsAuthenticated,)
    # @method_decorator(token_decode())
    def post(self,request,user_id):
        data = request.data 
        data['user_id'] = user_id
        questions_list=Question(data=data)
        questions_list.is_valid(raise_exception=True)

        questions_list.save()
        return Response(data=questions_list.data,status=status.HTTP_200_OK)

    def get_question(self, pk):
        try:
            return Question.objects.get(pk=pk)
        except Question.DoesNotExist:
            raise status.HTTP_404_NOT_FOUND


    def get(self,request,pk=None,format=None):
        if pk==None:
            question_list=Question.objects.all()
            stat=True
        else:
            stat=False
            question_list=self.get_question(pk)
        serialized_question=QuestionSerializer(question_list,many=stat)
        return Response(data=serialized_question.data,status=status.HTTP_200_OK)
        

class AnswerView(APIView):
    
    # permission_classes = (IsAuthenticated,)
    # @method_decorator(token_decode())
    def post(self,request,user_id):
        data = request.data 
        data['user_id'] = user_id
        answers_list=Answer(data=data)
        answers_list.is_valid(raise_exception=True)

        answers_list.save()
        return Response(data=answers_list.data,status=status.HTTP_200_OK)

    def get_answer(self, pk):
        try:
            return Answer.objects.get(pk=pk)
        except Answer.DoesNotExist:
            raise status.HTTP_404_NOT_FOUND


    def get(self,request,pk=None,format=None):
        if pk==None:
            answers_list=Answer.objects.all()
            stat=True
        else:
            stat=False
            answers_list=self.get_answer(pk)
        serialized_answer=AnswerSerializer(answers_list,many=stat)
        return Response(data=serialized_answer.data,status=status.HTTP_200_OK)
        