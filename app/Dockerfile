FROM python:3.12-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Start Gunicorn bound to the correct port
CMD ["gunicorn", "main:app", "-b", "0.0.0.0:8080"]
