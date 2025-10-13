from dotenv import load_dotenv 
from sqlalchemy import create_engine, text
import os

load_dotenv()

def connection(host='postgres', port=os.getenv('PGSQL_PORT')):  
    """Create database connection with fallback"""
    try:
        db_user = os.getenv('POSTGRES_USER')
        db_password = os.getenv('POSTGRES_PASSWORD')
        db_name = os.getenv('POSTGRES_DB')
        
        if not all([db_user, db_password, db_name]):
            raise ValueError("Missing database credentials in environment variables")
        
        engine = create_engine(
            f"postgresql://{db_user}:{db_password}@{host}:{port}/{db_name}"
        )
        
        # Test connection
        with engine.begin() as conn:
            conn.execute(text("SELECT 1"))
            
        print("Database connection was successful")
        return engine
        
    except Exception as e:
        print(f"Database connection has failed: {e}")
        raise