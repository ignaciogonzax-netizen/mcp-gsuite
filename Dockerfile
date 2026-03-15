FROM python:3.13-slim

WORKDIR /app

COPY . .

RUN pip install -e .

EXPOSE 8000

CMD ["python", "-m", "mcp_gsuite.server"]
