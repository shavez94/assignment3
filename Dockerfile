FROM amazonlinux:2

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .

# Expose the port Flask runs on
EXPOSE 5000
CMD ["python", "app.py"]
