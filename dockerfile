# Base image met Python 3.12
FROM python:3.12-slim

# Set de werkdirectory
WORKDIR /app

# Kopieer de vereiste bestanden naar de container
COPY requirements.txt requirements.txt
COPY upload.py upload.py

# Installeer de dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose de poort die Streamlit gebruikt
EXPOSE 8501

# Start de Streamlit applicatie
CMD ["streamlit", "run", "upload.py", "--server.port=8501", "--server.enableCORS=false"]
