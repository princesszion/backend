# Generated by Django 4.2.3 on 2023-07-31 09:51

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('indicators', '0002_alter_crop_group_season_id_alter_crop_group_year_id_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='indicators',
            name='crop_group_id',
        ),
        migrations.RemoveField(
            model_name='indicators',
            name='urbanization_id',
        ),
        migrations.AddField(
            model_name='age_range',
            name='range_age',
            field=models.CharField(default=None, max_length=255),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='enterprise_size',
            name='size',
            field=models.CharField(default=None, max_length=255),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='indicators',
            name='group_id',
            field=models.ForeignKey(db_column='group_id', default=None, on_delete=django.db.models.deletion.CASCADE, to='indicators.indicators_group'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='indicators',
            name='urbanisation_id',
            field=models.ForeignKey(db_column='urbanisation_id', default=None, on_delete=django.db.models.deletion.CASCADE, to='indicators.urbanization'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='crop_group',
            name='season_id',
            field=models.ForeignKey(db_column='seasons_id', on_delete=django.db.models.deletion.CASCADE, to='indicators.seasons'),
        ),
        migrations.AlterField(
            model_name='crop_group',
            name='year_id',
            field=models.ForeignKey(db_column='years_id', on_delete=django.db.models.deletion.CASCADE, to='indicators.years'),
        ),
        migrations.AlterField(
            model_name='indicators',
            name='sectors_of_employment_id',
            field=models.ForeignKey(db_column='sector_of_employment_id', on_delete=django.db.models.deletion.CASCADE, to='indicators.sectors_of_employment'),
        ),
    ]
