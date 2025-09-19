# Use slim Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app/ .

# Expose app port
EXPOSE 8000

# Use uvicorn for production server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
