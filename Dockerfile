FROM python:3.11-slim

RUN mkdir /app

WORKDIR /app
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

LABEL version ="1.0"


EXPOSE 8501

CMD ["streamlit", "run", "gui_scraper.py"]


