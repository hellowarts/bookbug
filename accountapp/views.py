from django.contrib.auth.models import User
from django.http import HttpResponseRedirect
from django.shortcuts import render

# Create your views here.
from django.urls import reverse
from django.views.generic import DetailView


def index(request):
    return render(request, 'accountapp/index.html')