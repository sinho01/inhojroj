FROM python:3.9.0

WORKDIR /home/

RUN echo "testing123"

RUN git clone https://github.com/sinho01/inhoproj.git

WORKDIR /home/inhoproj/

RUN python -m  pip install --upgrade pip

RUN pip install -r requirements.txt

RUN pip install mysqlclient

RUN echo "PAGE_PER=25" > .env

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=inhoproj.settings.deploy && python manage.py migrate --settings=inhoproj.settings.deploy && gunicorn inhoproj.wsgi --env DJANGO_SETTINGS_MODULE=inhoproj.settings.deploy --bind", "0.0.0.0:8000"]
