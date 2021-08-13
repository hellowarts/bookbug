FROM python:3.9.0

WORKDIR /home/

RUN echo "this is onbuild test"!

RUN git clone https://github.com/hellowarts/bookbug.git

WORKDIR /home/bookbug/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN echo "SECRET_KEY=django-insecure-7z56brp#99@%w#u!$mu_zb@_=rl)^6bbn)1fu+e2-%lm(m8k0*" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["gunicorn", "bookbug.wsgi", "--bind", "0.0.0.0:8000"]