# Generated by Django 4.2.3 on 2023-07-27 10:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('indicators', '0002_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='gender',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'gender',
            },
        ),
        migrations.AlterModelTable(
            name='themes',
            table='themes',
        ),
        migrations.AlterModelTable(
            name='unit',
            table='unit',
        ),
    ]
