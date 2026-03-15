FROM python:3.13-slim

WORKDIR /app

COPY . .

RUN pip install -e . && pip install mcp-proxy

EXPOSE 8000

CMD ["mcp-proxy", "--port", "8000", "--", "python", "-m", "mcp_gsuite.server"]
