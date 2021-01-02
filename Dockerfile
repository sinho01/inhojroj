FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/sinho01/inhoproj.git

WORKDIR /home/inhoproj/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=d@8sb8f-c$i_dpk9_vj9&zffuv0^zi1v@-hpdxs4xwe!&a!s)^" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]