FROM python:3.11-slim
WORKDIR /app

# Install pip and dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

EXPOSE 8001

CMD ["python", "main.py"]
