FROM python:3.8-slim

WORKDIR /app

COPY . .

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -e .

EXPOSE 5000
CMD ["python", "application.py"]