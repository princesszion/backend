# # # from django.shortcuts import render
# # # from django.http import HttpResponse


# # # def index(request):
# # #     return HttpResponse("Hello, world. You're at the polls index.")



# # # indicators/views.py


# # # indicators/views.py


# # # indicators/views.py
# # from django.shortcuts import render, get_object_or_404, redirect
# # from .models import indicators as IndicatorModel
# # from .forms import IndicatorForm

# # def indicator_list(request):
# #     all_indicators = IndicatorModel.objects.all()
# #     return render(request, 'indicator_list.html', {'indicators': all_indicators})

# # def create_indicator(request):
# #     if request.method == 'POST':
# #         form = IndicatorForm(request.POST)
# #         if form.is_valid():
# #             form.save()
# #             return redirect('indicator_list')
# #     else:
# #         form = IndicatorForm()
# #     return render(request, 'create_indicator.html', {'form': form})

# # def update_indicator(request, pk):
# #     indicator = get_object_or_404(IndicatorModel, pk=pk)
# #     if request.method == 'POST':
# #         form = IndicatorForm(request.POST, instance=indicator)
# #         if form.is_valid():
# #             form.save()
# #             return redirect('indicator_list')
# #     else:
# #         form = IndicatorForm(instance=indicator)
# #     return render(request, 'update_indicator.html', {'form': form, 'indicator': indicator})

# # def delete_indicator(request, pk):
# #     indicator = get_object_or_404(IndicatorModel, pk=pk)
# #     if request.method == 'POST':
# #         indicator.delete()
# #         return redirect('indicator_list')
# #     return render(request, 'delete_indicator.html', {'indicator': indicator})

# # def search_indicators(request):
# #     query = request.GET.get('q')
# #     if query:
# #         search_results = IndicatorModel.objects.filter(name__icontains=query)
# #     else:
# #         search_results = IndicatorModel.objects.all()
# #     return render(request, 'search_indicators.html', {'indicators': search_results})




# # views.py

# # from django.shortcuts import get_object_or_404, redirect, render
# # from django.http import JsonResponse
# # from .models import indicators as IndicatorModel
# # from .forms import IndicatorForm

# # def indicator_list(request):
# #     all_indicators = IndicatorModel.objects.all()
# #     data = []
# #     for indicator in all_indicators:
# #         indicator_data = {
# #             'name': indicator.name,
# #             'value': indicator.value,
# #             'unit': indicator.unit_id.name if indicator.unit_id else None,
# #             'year': indicator.year_id.name if indicator.year_id else None,
# #             'group': indicator.group_id.name if indicator.group_id else None,
# #             'theme': indicator.theme_id.name if indicator.theme_id else None,
# #             'district': indicator.district_id.name if indicator.district_id else None,
# #             'province': indicator.province_id.name if indicator.province_id else None,
# #             'urbanisation': indicator.urbanisation_id.name if indicator.urbanisation_id else None,
# #             'source': indicator.source_id.name if indicator.source_id else None,
# #             'gender': indicator.gender_id.name if indicator.gender_id  else None,
# #             'sector_of_employment': indicator.sector_of_employment_id.name if indicator.sector_of_employment_id else None,
# #             'age_range': indicator.age_range_id.name if indicator.age_range_id else None,
# #             # Add more related fields as needed
# #             # ...
# #         }
# #         data.append(indicator_data)
# #     return JsonResponse(data, safe=False)

# # from django.shortcuts import render
# from django.shortcuts import get_object_or_404, redirect, render
# from django.http import JsonResponse
# from django.core.exceptions import ObjectDoesNotExist
# from .models import indicators as IndicatorModel
# from .forms import IndicatorForm


# def indicator_list(request):
#     all_indicators = IndicatorModel.objects.all()

#     data = []
#     for indicator in all_indicators:
#         indicator_data = {
#             'name': indicator.name,
#             'unit_id': indicator.unit_id.name if indicator.unit_id else None,
#             'year_id': indicator.year_id.name if indicator.year_id else None,
#             'group_id': indicator.group_id.name if indicator.group_id else None,
#             'theme_id': indicator.theme_id.name if indicator.theme_id else None,
#             'district_id': indicator.district_id.name if indicator.district_id else None,
#             'province_id': indicator.province_id.name if indicator.province_id else None,
#             'urbanisation_id': indicator.urbanisation_id.name if indicator.urbanisation_id else None,
#             'source_id': indicator.source_id.name if indicator.source_id else None,
#             'gender_id': indicator.gender_id.name if indicator.gender_id else None,
#             # 'sector_of_employment_id': indicator.sector_of_employment_id.name if indicator.sector_of_employment_id else None,
#             'age_range_id': indicator.age_range_id.name if indicator.age_range_id else None,
#             'value': indicator.value,
#         }
#         data.append(indicator_data)

#     return JsonResponse(data, safe=False)


# # def indicator_list(request):
# #     all_indicators = IndicatorModel.objects.all().values_list(
# #         'name',
# #         'unit_id__name',
# #         'year_id__name',
# #         'group_id__name',
# #         'theme_id__name',
# #         'district_id__name',
# #         'province_id__name',
# #         'urbanisation_id__name',
# #         'source_id__name',
# #         'gender_id__name',
# #         'sector_of_employment_id__name',
# #         'age_range_id__name',
# #         'value',
# #     )
# #     headers = [
# #         'name',
# #         'unit_id',
# #         'year_id',
# #         'group_id',
# #         'theme_id',
# #         'district_id',
# #         'province_id',
# #         'urbanisation_id',
# #         'source_id',
# #         'gender_id',
# #         'sector_of_employment_id',
# #         'age_range_id',
# #         'value',
# #     ]
# #     data = [dict(zip(headers, row)) for row in all_indicators]
# #     return JsonResponse(data, safe=False)

# # def indicator_list(request):
# #     all_indicators = IndicatorModel.objects.all().values(
# #         'name',
# #         'unit_id__name',
# #         'year_id__name',
# #         'group_id__name',
# #         'theme_id__name',
# #         'district_id__name',
# #         'province_id__name',
# #         'urbanisation_id__name',
# #         'source_id__name',
# #         'gender_id__name',
# #         'sector_of_employment_id__name',
# #         'age_range_id__name',
# #         'value',
# #     )
# #     return JsonResponse(list(all_indicators), safe=False)

# def create_indicator(request):
#     if request.method == 'POST':
#         form = IndicatorForm(request.POST)
#         if form.is_valid():
#             form.save()
#             return redirect('indicator_list')
#     else:
#         form = IndicatorForm()
#     return render(request, 'create_indicator.html', {'form': form})

# def update_indicator(request, pk):
#     indicator = get_object_or_404(IndicatorModel, pk=pk)
#     if request.method == 'POST':
#         form = IndicatorForm(request.POST, instance=indicator)
#         if form.is_valid():
#             form.save()
#             return redirect('indicator_list')
#     else:
#         form = IndicatorForm(instance=indicator)
#     return render(request, 'update_indicator.html', {'form': form, 'indicator': indicator})

# def delete_indicator(request, pk):
#     indicator = get_object_or_404(IndicatorModel, pk=pk)
#     if request.method == 'POST':
#         indicator.delete()
#         return redirect('indicator_list')
#     return render(request, 'delete_indicator.html', {'indicator': indicator})

# # def search_indicators(request):
# #     all_indicators = IndicatorModel.objects.all()
# #     query = request.GET.get('q')
# #     if query:
    
# #         search_results = IndicatorModel.objects.filter(name__icontains=query).values()  
# #     else:
# #         search_results = IndicatorModel.objects.all().values()  
# #     return JsonResponse({'indicators': list(search_results)}) 
# # 




# from django.core import serializers
# from django.http import JsonResponse
# from .models import crops

# def search_indicators(request):
#     query = request.GET.get('q')
#     if query:
#         # Filter crops by name and get the indicators for each crop
#         crops = crops.objects.filter(name__icontains=query)
#     else:
#         # Get all crops and their associated indicators
#         crops = crops.objects.all()

#     search_results = []
#     for crop in crops:
#         indicators = IndicatorModel.objects.filter(crop=crop)
#         indicator_data = []
#         for indicator in indicators:
#             data = IndicatorModel.objects.filter(indicator=indicator)
#             data_values = [entry.data_value for entry in data]
#             indicator_data.append({'indicator': indicator.name, 'data': data_values})

#         search_results.append({'crop': crop.name, 'indicators': indicator_data})

#     return JsonResponse({'search_results': search_results})




from django.shortcuts import get_object_or_404, redirect, render
from django.http import JsonResponse
from .models import Indicators
from .forms import IndicatorForm

def indicator_list(request):
    all_indicators = Indicators.objects.all()

    data = []
    for indicator in all_indicators:
        indicator_data = {
            'name': indicator.name,
            'unit_id': indicator.unit.name if indicator.unit else None,
            'year_id': indicator.year.name if indicator.year else None,
            'group_id': indicator.group.name if indicator.group else None,
            'theme_id': indicator.theme.name if indicator.theme else None,
            'district_id': indicator.district.name if indicator.district else None,
            'province_id': indicator.province.name if indicator.province else None,
            'urbanisation_id': indicator.urbanisation.name if indicator.urbanisation else None,
            'source_id': indicator.source.name if indicator.source else None,
            'gender_id': indicator.gender.name if indicator.gender else None,
            'age_range_id': indicator.age_range.name if indicator.age_range else None,
            'value': indicator.value,
        }
        data.append(indicator_data)

    return JsonResponse(data, safe=False)

def create_indicator(request):
    if request.method == 'POST':
        form = IndicatorForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('indicator_list')
    else:
        form = IndicatorForm()
    return render(request, 'create_indicator.html', {'form': form})

def update_indicator(request, pk):
    indicator = get_object_or_404(Indicators, pk=pk)
    if request.method == 'POST':
        form = IndicatorForm(request.POST, instance=indicator)
        if form.is_valid():
            form.save()
            return redirect('indicator_list')
    else:
        form = IndicatorForm(instance=indicator)
    return render(request, 'update_indicator.html', {'form': form, 'indicator': indicator})

def delete_indicator(request, pk):
    indicator = get_object_or_404(Indicators, pk=pk)
    if request.method == 'POST':
        indicator.delete()
        return redirect('indicator_list')
    return render(request, 'delete_indicator.html', {'indicator': indicator})

def search_indicators(request):
    query = request.GET.get('q')
    if query:
        # Filter indicators by name containing the query
        search_results = Indicators.objects.filter(name__icontains=query)
    else:
        # Get all indicators
        search_results = Indicators.objects.all()

    return render(request, 'search_indicators.html', {'indicators': search_results})
