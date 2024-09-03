# Generated by Django 4.2.3 on 2023-08-01 12:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('indicators', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='AgeRange',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('range_age', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'age_range',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='CropGroup',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('value', models.IntegerField()),
            ],
            options={
                'db_table': 'crop_group',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='EnterpriseSize',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('size', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'enterprise_size',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='IndicatorsGroups',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'indicators_groups',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='SectorOfEconomicActivity',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'sector_of_economic_activity',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='SectorsOfEmployment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'sectors_of_employment',
                'managed': False,
            },
        ),
        migrations.DeleteModel(
            name='age_range',
        ),
        migrations.RemoveField(
            model_name='crop_group',
            name='season_id',
        ),
        migrations.RemoveField(
            model_name='crop_group',
            name='year_id',
        ),
        migrations.DeleteModel(
            name='enterprise_size',
        ),
        migrations.DeleteModel(
            name='indicators_groups',
        ),
        migrations.DeleteModel(
            name='sector_of_economic_activity',
        ),
        migrations.DeleteModel(
            name='sectors_of_employment',
        ),
        migrations.AlterModelOptions(
            name='crops',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='district',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='gender',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='indicators',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='province',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='seasons',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='source',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='themes',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='unit',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='urbanization',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='years',
            options={'managed': False},
        ),
        migrations.DeleteModel(
            name='crop_group',
        ),
    ]
