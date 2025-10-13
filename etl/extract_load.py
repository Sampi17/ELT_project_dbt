import pandas as pd
from db_utils import connection,text

def extract_and_load():
    #Reading csv files and loading them as dataframmes
    raw_data = {}
    path = '/app/raw'
    csv_list = ['Branches','Categories','Customers','Order_Details','Orders']
    print("Starting ETL process...")
    try:
        for file in csv_list:
            df = pd.read_csv(f'{path}/{file}.csv',index_col=False,sep=';')
            raw_data[file] = df
            # Load to PostgreSQL
            engine = connection()
            table_name = file.lower()
            
            print(f" Loading table: {table_name}")
            df.to_sql(table_name, engine, if_exists='replace', index=False)
            print(f'successfully loaded table {table_name} in database')
    except FileNotFoundError:
        print(f"❌ File not found: {path}")
    except pd.errors.ParserError as pe:
        print(f"❌ Parsing error in file '{path}': {pe}")
    except Exception as e:
        print(f"❌ Failed to load table '{table_name}': {e}")

def main():
    #running extract and loading process
    extract_and_load()

if __name__ == "__main__":
    main()
