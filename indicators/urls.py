# from django.urls import path

# from . import views

# urlpatterns = [
#     path('', views.index, name='index'),
# ]


# indicators/urls.py
from django.urls import path
from . import views

urlpatterns = [
    path('', views.indicator_list, name='indicator_list'),
    path('create/', views.create_indicator, name='create_indicator'),
    path('update/<int:pk>/', views.update_indicator, name='update_indicator'),
    path('delete/<int:pk>/', views.delete_indicator, name='delete_indicator'),
    path('search/', views.search_indicators, name='search_indicators'),
]
