from django.urls import path
from .views import status, test

urlpatterns = [
    path('healthcheck/', status),
    path('test/', test),
]
