# Generated by Django 4.2.3 on 2023-08-01 10:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('indicators', '0008_remove_crops_indicator_id'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='indicators_group',
            new_name='indicators_groups',
        ),
        migrations.RenameModel(
            old_name='sector_of_employment',
            new_name='sectors_of_employment',
        ),
    ]