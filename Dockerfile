FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install uv && uv pip install --system -e .

EXPOSE 8000

CMD ["python", "-m", "mcp_gsuite"]
