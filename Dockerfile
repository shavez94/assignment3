FROM amazonlinux:2

RUN yum install -y python3 python3-pip
WORKDIR /app

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY app.py .

EXPOSE 5000
CMD ["python3", "app.py"]
