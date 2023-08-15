FROM python:3.9-alpine

WORKDIR /app
run python3 -m venv ./venv
COPY requirements.txt ./
run pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . ./venv/bin/activate

CMD ["python3","-m","WebStreamer"]
