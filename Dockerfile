FROM  python:stretch

COPY . /opt/app
WORKDIR /opt/app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8080", "main:APP"]