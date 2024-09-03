from django.db import models

class AgeRange(models.Model):
    name = models.CharField(max_length=255)
    range_age = models.CharField(max_length=255)

    class Meta:
        db_table = 'age_range'

class Crops(models.Model):
    name = models.CharField(max_length=255)
    season = models.ForeignKey('Seasons', on_delete=models.CASCADE)
    unit = models.ForeignKey('Unit', on_delete=models.CASCADE)
    indicator = models.ForeignKey('Indicators', on_delete=models.CASCADE)
    crop_group = models.ForeignKey('CropGroup', on_delete=models.CASCADE)
    value = models.IntegerField()

    class Meta:
        db_table = 'crops'

class CropGroup(models.Model):
    name = models.CharField(max_length=255)
    indicator = models.ForeignKey('Indicators', on_delete=models.CASCADE)
    years = models.ForeignKey('Years', on_delete=models.CASCADE)
    value = models.IntegerField()

    class Meta:
        db_table = 'crop_group'

class District(models.Model):
    name = models.CharField(max_length=11)

    class Meta:
        db_table = 'district'

class EnterpriseSize(models.Model):
    name = models.CharField(max_length=255)
    size = models.CharField(max_length=255)

    class Meta:
        db_table = 'enterprise_size'

class Gender(models.Model):
    name = models.CharField(max_length=255)

    class Meta:
        db_table = 'gender'

class Indicators(models.Model):
    name = models.CharField(max_length=255)
    unit = models.ForeignKey('Unit', on_delete=models.SET_NULL, null=True)
    year = models.ForeignKey('Years', on_delete=models.SET_NULL, null=True)
    group = models.ForeignKey('IndicatorsGroups', on_delete=models.SET_NULL, null=True)
    theme = models.ForeignKey('Themes', on_delete=models.SET_NULL, null=True)
    district = models.ForeignKey('District', on_delete=models.SET_NULL, null=True)
    province = models.ForeignKey('Province', on_delete=models.SET_NULL, null=True)
    urbanisation = models.ForeignKey('Urbanization', on_delete=models.SET_NULL, null=True)
    source = models.ForeignKey('Source', on_delete=models.SET_NULL, null=True)
    gender = models.ForeignKey('Gender', on_delete=models.SET_NULL, null=True)
    sector_of_employment = models.ForeignKey('SectorsOfEmployment', on_delete=models.SET_NULL, null=True)
    age_range = models.ForeignKey('AgeRange', on_delete=models.SET_NULL, null=True)
    value = models.FloatField(null=True)

    class Meta:
        db_table = 'indicators'

class IndicatorsGroups(models.Model):
    name = models.CharField(max_length=255)

    class Meta:
        db_table = 'indicators_groups'

class Province(models.Model):
    name = models.CharField(max_length=255)

    class Meta:
        db_table = 'province'

class Seasons(models.Model):
    name = models.CharField(max_length=255)
    
    class Meta:
        db_table = 'seasons'

class SectorsOfEmployment(models.Model):
    name = models.CharField(max_length=255)

    class Meta:
        db_table = 'sectors_of_employment'

class SectorOfEconomicActivity(models.Model):
    name = models.CharField(max_length=255)

    class Meta:
        db_table = 'sector_of_economic_activity'

class Source(models.Model):
    name = models.CharField(max_length=255)
    
    class Meta:
        db_table = 'source'

class Themes(models.Model):
    name = models.CharField(max_length=255)

    class Meta:
        db_table = 'themes'

class Unit(models.Model):
    name = models.CharField(max_length=11)

    class Meta:
        db_table = 'unit'

class Urbanization(models.Model):
    name = models.CharField(max_length=255)
    
    class Meta:
        db_table = 'urbanization'

class Years(models.Model):
    name = models.IntegerField()
    
    class Meta:
        db_table = 'years'
