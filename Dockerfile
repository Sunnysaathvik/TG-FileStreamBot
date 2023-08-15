FROM python:3.9-alpine
run git clone https://github.com/Sunnysaathvik/TG-FileStreamBot
WORKDIR /app
run python3 -m venv ./venv
COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . ./venv/bin/activate

CMD ["python3","-m","WebStreamer"]
