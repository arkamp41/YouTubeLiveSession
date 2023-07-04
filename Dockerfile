FROM python:3.8.13-slim-buster

WORKDIR /main/usr/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

COPY . /requirement.txt /main/usr/app

RUN pip install -r requirement.txt

COPY . /main/usr/app

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

