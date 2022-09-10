FROM python:3.7-alpine

WORKDIR /app
COPY ./app .
RUN python -m pip install -r requirements.txt

EXPOSE 8080
ENV FLASK_ENV="development"
CMD ["python", "-u", "main.py"]
