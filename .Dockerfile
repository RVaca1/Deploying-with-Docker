FROM python:3.9

WORKDIR /app

COPY . .

# Instalar dependencias
RUN pip install -r requirements.txt


#expose the app port
EXPOSE 8000

#run flask app with gunicorn

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]


