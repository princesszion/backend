# Generated by Django 4.2.3 on 2023-07-27 12:25

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('indicators', '0003_gender_alter_themes_table_alter_unit_table'),
    ]

    operations = [
        migrations.CreateModel(
            name='age_range',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'age_range',
            },
        ),
        migrations.CreateModel(
            name='crop_group',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('value', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='district',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'district',
            },
        ),
        migrations.CreateModel(
            name='enterprise_size',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'enterprise_size',
            },
        ),
        migrations.CreateModel(
            name='indicators_group',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'indicators_group',
            },
        ),
        migrations.CreateModel(
            name='province',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'province',
            },
        ),
        migrations.CreateModel(
            name='seasons',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'seasons',
            },
        ),
        migrations.CreateModel(
            name='sector_of_economic_activity',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'sector_of_economic_activity',
            },
        ),
        migrations.CreateModel(
            name='sectors_of_employment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'sectors_of_employment',
            },
        ),
        migrations.CreateModel(
            name='source',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'source',
            },
        ),
        migrations.CreateModel(
            name='urbanization',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'urbanization',
            },
        ),
        migrations.CreateModel(
            name='years',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'years',
            },
        ),
        migrations.CreateModel(
            name='indicators',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('value', models.IntegerField()),
                ('age_range_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.age_range')),
                ('crop_group_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.crop_group')),
                ('district_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.district')),
                ('gender_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.gender')),
                ('province_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.province')),
                ('sectors_of_employment_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.sectors_of_employment')),
                ('source_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.source')),
                ('theme_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.themes')),
                ('unit_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.unit')),
                ('urbanization_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.urbanization')),
                ('year_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.years')),
            ],
        ),
        migrations.CreateModel(
            name='crops',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('value', models.IntegerField()),
                ('crop_group_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.crop_group')),
                ('indicator_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.indicators')),
                ('season_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.seasons')),
                ('unit_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.unit')),
            ],
        ),
        migrations.AddField(
            model_name='crop_group',
            name='season_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.seasons'),
        ),
        migrations.AddField(
            model_name='crop_group',
            name='year_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='indicators.years'),
        ),
    ]
