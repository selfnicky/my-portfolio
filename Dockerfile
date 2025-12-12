FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

ENV FLASK_APP=app.py

# Run on port 80 instead of 5001
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=80"]