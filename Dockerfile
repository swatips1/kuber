
FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install flask
RUN pip install pyjwt
RUN pip install gunicorn
RUN pip install pytest

ENTRYPOINT ["gunicorn", "-b", ":8080", "app:APP"]
