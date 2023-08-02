# Generated by Django 4.2.3 on 2023-07-31 11:28

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('indicators', '0004_alter_indicators_sectors_of_employment_id'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='sectors_of_employment',
            new_name='sector_of_employment',
        ),
        migrations.RemoveField(
            model_name='indicators',
            name='sectors_of_employment_id',
        ),
        migrations.AddField(
            model_name='indicators',
            name='sector_of_employment_id',
            field=models.ForeignKey(db_column='sector_of_employment_id', default=None, on_delete=django.db.models.deletion.CASCADE, to='indicators.sector_of_employment'),
            preserve_default=False,
        ),
        migrations.AlterModelTable(
            name='sector_of_employment',
            table='sector_of_employment',
        ),
    ]
