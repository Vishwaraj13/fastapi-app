FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app .

# No need to EXPOSE 8000 specifically, but you can leave it
EXPOSE 8080
EXPOSE 8000

# Use Railway's PORT env variable
CMD ["sh", "-c", "uvicorn main:app --host 0.0.0.0 --port $PORT"]

