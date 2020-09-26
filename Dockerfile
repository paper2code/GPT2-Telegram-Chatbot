FROM python:3-slim
MAINTAINER paper2code <contact@paper2code.com>

WORKDIR /opt/service
COPY requirements.txt .

RUN pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

COPY . .

ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    PYTHONDONTWRITEBYTECODE=1

ENTRYPOINT ["python3", "./src/GPT2-Learning.py"]
