# Generated by Django 4.2.3 on 2023-08-01 11:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('indicators', '0004_themes_test'),
    ]

    operations = [
        migrations.AlterField(
            model_name='age_range',
            name='range_age',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='crop_group',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='crop_group',
            name='season_id',
            field=models.ForeignKey(db_column='seasons_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.seasons'),
        ),
        migrations.AlterField(
            model_name='crop_group',
            name='value',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='crop_group',
            name='year_id',
            field=models.ForeignKey(db_column='years_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.years'),
        ),
        migrations.AlterField(
            model_name='crops',
            name='crop_group_id',
            field=models.ForeignKey(db_column='crop_group_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.crop_group'),
        ),
        migrations.AlterField(
            model_name='crops',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='crops',
            name='season_id',
            field=models.ForeignKey(db_column='season_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.seasons'),
        ),
        migrations.AlterField(
            model_name='crops',
            name='unit_id',
            field=models.ForeignKey(db_column='unit_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.unit'),
        ),
        migrations.AlterField(
            model_name='crops',
            name='value',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='district',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='enterprise_size',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='enterprise_size',
            name='size',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='gender',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='age_range_id',
            field=models.ForeignKey(db_column='age_range_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.age_range'),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='district_id',
            field=models.ForeignKey(db_column='district_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.district'),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='gender_id',
            field=models.ForeignKey(db_column='gender_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.gender'),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='group_id',
            field=models.ForeignKey(db_column='group_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.indicators_groups'),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='province_id',
            field=models.ForeignKey(db_column='province_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.province'),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='sector_of_employment_id',
            field=models.ForeignKey(db_column='sector_of_employment_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.sectors_of_employment'),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='source_id',
            field=models.ForeignKey(db_column='source_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.source'),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='theme_id',
            field=models.ForeignKey(db_column='theme_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.themes'),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='unit_id',
            field=models.ForeignKey(db_column='unit_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.unit'),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='urbanisation_id',
            field=models.ForeignKey(db_column='urbanisation_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.urbanization'),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='value',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='year_id',
            field=models.ForeignKey(db_column='year_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='indicators.years'),
        ),
        migrations.AlterField(
            model_name='indicators_groups',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='province',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='seasons',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='sector_of_economic_activity',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='sectors_of_employment',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='source',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='themes_test',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='unit',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='urbanization',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='years',
            name='name',
            field=models.CharField(max_length=255, null=True),
        ),
    ]