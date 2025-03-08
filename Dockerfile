FROM python:3.9

WORKDIR /app

COPY . /app

RUN pip install fastapi uvicorn transformers torch

CMD ["uvicorn", "ai_service:app", "--host", "0.0.0.0", "--port", "8000"]
