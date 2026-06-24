FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -e .

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

RUN flask init-db

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
