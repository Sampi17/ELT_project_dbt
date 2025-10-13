FROM python:3.12.3
WORKDIR /app

# Copy requirements first (for better caching)
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Create directory for data
RUN mkdir -p /app/raw
RUN mkdir -p /app/etl
# Copy your Python scripts
COPY . *.py 

# Copy raw data files
COPY . raw/

CMD ["python", "extract_load.py"]