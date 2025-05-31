FROM python:3.11-slim
WORKDIR /app
RUN pip install uv
COPY pyproject.toml uv.lock ./
RUN uv pip install --system .
COPY main.py .
EXPOSE 8001
CMD ["uv", "run", "main.py"]
# CMD ["uv", "run", "--host", "0.0.0.0", "main.py"]
