# Use a lightweight Python image

FROM python:3.9



# Set the working directory

WORKDIR /app



# Copy project files

COPY . .



# Install dependencies

RUN pip install -r requirements.txt



# Expose the app port

EXPOSE 8000



# Run Flask app with Gunicorn

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
