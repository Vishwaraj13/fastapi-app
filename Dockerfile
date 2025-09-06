FROM python:3.9-slim

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app /code/app

# Railway will provide PORT environment variable
CMD ["python", "app/main.py"]

