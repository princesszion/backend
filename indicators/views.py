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

from django.http import JsonResponse
from django.db.models import Q

def search_indicators(request):
    query = request.GET.get('q')
    if query:
        # Perform a search across multiple fields using the Q object
        search_results = Indicators.objects.filter(
            Q(name__icontains=query) |    # Search by name
            Q(unit__name__icontains=query) |    # Search by unit name
            Q(year__name__icontains=query) |    # Search by year name
            Q(group__name__icontains=query) |    # Search by group name
            Q(theme__name__icontains=query) |    # Search by theme name
            Q(district__name__icontains=query) |    # Search by district name
            Q(province__name__icontains=query) |    # Search by province name
            Q(urbanisation__name__icontains=query) |    # Search by urbanisation name
            Q(source__name__icontains=query) |    # Search by source name
            Q(gender__name__icontains=query) |    # Search by gender name
            Q(age_range__name__icontains=query)     # Search by age range name
        )
    else:
        # Get all indicators if no query is provided
        search_results = Indicators.objects.all()

    # Prepare a list to store the serialized data for each indicator
    indicators_list = []

    for indicator in search_results:
        # Serialize the indicator data and its related data into a dictionary
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

        # Add the serialized indicator data to the list
        indicators_list.append(indicator_data)

    # Return the JSON response containing the list of indicators
    return JsonResponse(indicators_list, safe=False)



#get data for individual
def get_indicator(request, indicator_id):
    try:
        indicator = Indicators.objects.get(pk=indicator_id)
    except Indicators.DoesNotExist:
        # If the indicator with the given ID does not exist, return an error response
        return JsonResponse({'error': 'Indicator not found'}, status=404)

    # Serialize the indicator data and its related data into a dictionary
    indicator_data = {
        'id': indicator.id,
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

    # Return the JSON response containing the data for the individual indicator
    return JsonResponse(indicator_data)


from django.http import JsonResponse
from django.db.models import Q

def get_indicator_group(request, indicator_name):
    # Filter indicators with the specified name (case-insensitive)
    search_results = Indicators.objects.filter(name__icontains=indicator_name)

    if not search_results.exists():
        # If no indicators with the given name are found, return an error response
        return JsonResponse({'error': 'Indicator not found'}, status=404)

    # Get distinct indicator names from the database
    distinct_names = search_results.values_list('name', flat=True).distinct()

    # Prepare a list to store the group of information for the indicators
    indicator_group = []

    for name in distinct_names:
        # Get all indicators with the same name
        indicators_with_name = search_results.filter(name=name)

        # Serialize the data for each year's value for the indicators with the same name
        indicators_data = []
        for indicator in indicators_with_name:
            indicator_data = {
                'year': indicator.year.name if indicator.year else None,
                'value': indicator.value,
            }
            indicators_data.append(indicator_data)

        # Append the serialized data for the indicators with the same name to the indicator_group list
        indicator_group.append({'indicator_name': name, 'data': indicators_data})

    # Return the JSON response containing the group of information for the indicators
    return JsonResponse(indicator_group, safe=False)
