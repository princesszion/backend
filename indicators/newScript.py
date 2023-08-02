import pandas as pd
import mysql.connector

connection = mysql.connector.connect(
    host='localhost',
    user='root',
    password='',
    database='test'
)

if connection:
    print("CONNECTED TO THE DATABASE")

excel_data = pd.read_excel('test.xlsx', sheet_name='Sheet1')

sql_insert = "INSERT INTO indicators (name, value, age_range_id, district_id, gender_id, province_id, source_id, theme_id, unit_id, year_id, group_id, urbanisation_id, sector_of_employment_id) " \
             "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

cursor = connection.cursor()


def fetch_ids(table_name, id_column, value_column):
    cursor.execute(f"SELECT {id_column}, {value_column} FROM {table_name}")
    rows = cursor.fetchall()
    return {row[1]: row[0] for row in rows}


theme_ids = fetch_ids("themes", "id", "name")
group_ids = fetch_ids("indicators_groups", "id", "name")
district_ids = fetch_ids("district", "id", "name")
province_ids = fetch_ids("province", "id", "name")
gender_ids = fetch_ids("gender", "id", "name")
age_range_ids = fetch_ids("age_range", "id", "name")
sector_of_employment_ids = fetch_ids("sectors_of_employment", "id", "name")
urbanisation_ids = fetch_ids("urbanization", "id", "name")
year_ids = fetch_ids("years", "id", "name")
unit_ids = fetch_ids("unit", "id", "name")
source_ids = fetch_ids("source", "id", "name")




for index, row in excel_data.iterrows():
   
    indicator_name = row['Indicators']
    unit_id = None
    group_id = None
    theme_id = None
    district_id = None
    province_id = None
    urbanisation_id = None
    source_id = None
    gender_id = None
    sector_of_employment_id = None
    age_range_id = None

    theme_name = row['theme']
    print(theme_name)
    if pd.isnull(theme_name) or theme_name == '':
        theme_id = None
    else:
        theme_id = theme_ids.get(theme_name)

    if 'urbanisation' in row:
        urbanisation_name = row['urbanisation']
        if pd.isnull(urbanisation_name) or urbanisation_name == '':
            urbanisation_id = None
        else:
            urbanisation_id = urbanisation_ids.get(urbanisation_name)

    if 'district' in row:
        district_name = row['district']
        if pd.isnull(district_name) or district_name == '':
            district_id = None
        else:
            district_id = district_ids.get(district_name)

    if 'province' in row:
        province_name = row['province']
        print(province_name)
        if pd.isnull(province_name) or province_name == '':
            province_id = None
        else:
            province_id = province_ids.get(province_name)

    if 'group' in row:
        group_name = row['group']
        if pd.isnull(group_name) or group_name == '':
            group_id = None
        else:
            group_id = group_ids.get(group_name)

    if 'unit' in row:
        unit_name = row['unit']
        if pd.isnull(unit_name) or unit_name == '':
            unit_id = None
        else:
            unit_id = unit_ids.get(unit_name)

    if 'source' in row:
        source_name = row['source']
        if pd.isnull(source_name) or source_name == '':
            source_id = None
        else:
            source_id = source_ids.get(source_name)

    if 'gender' in row:
        gender_name = row['gender']
        if pd.isnull(gender_name) or gender_name == '':
            gender_id = None
        else:
            gender_id = gender_ids.get(gender_name)

    if 'sector_of_employment' in row:
        sector_name = row['sector_of_employment']
        if pd.isnull(sector_name) or sector_name == '':
            sector_of_employment_id = None
        else:
            sector_of_employment_id = sector_of_employment_ids.get(sector_name)

    if 'age_range' in row:
        age_range_name = row['age_range']
        print(age_range_name, "age range")
        if pd.isnull(age_range_name) or age_range_name == '':
            age_range_id = None
        else:
            age_range_id = age_range_ids.get(age_range_name)

    for column in excel_data.columns[1:]:
        value = row[column]
        if pd.isnull(value) or value == '':
            value = None
        if isinstance(column, int):
            year_title = column
            year_id = year_ids.get(year_title)
        else:
            year_id = None

        if year_id is None:
            continue

        values = [indicator_name, value, age_range_id, district_id, gender_id, province_id, source_id,
                  theme_id, unit_id, year_id, group_id, urbanisation_id, sector_of_employment_id]

        cursor.execute(sql_insert, values)

connection.commit()
connection.close()

