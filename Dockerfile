FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/hellowarts/book_bug_main.git

WORKDIR /home/book_bug_main/

RUN pip install -r requirements.py

RUN echo "django-insecure-u@daehkcs^--vi1k&q+$tkd)a-86rxp-tw&7b$#h)grs0+r99y" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]