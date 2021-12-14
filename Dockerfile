FROM python:3.8-slim-buster
# it will upgrade pip and install whatever requirements we have listed on the req file
ADD requirements.txt /
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED=1
WORKDIR /app/
COPY . /app/

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]
