FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/sinho01/inhoproj.git

WORKDIR /home/inhoproj/

RUN python -m  pip install --upgrade pip

RUN pip install gunicorn

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=d@8sb8f-c$i_dpk9_vj9&zffuv0^zi1v@-hpdxs4xwe!&a!s)^" > .env

RUN echo "PAGE_PER=25" >> .env

RUN python manage.py migrate

RUN python manage.py collectstatic

EXPOSE 8000

CMD ["gunicorn","inhoproj.wsgi", "--bind", "0.0.0.0:8000"]
