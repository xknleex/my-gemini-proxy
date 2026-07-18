FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY main.py ./gemini_web2api.py
EXPOSE 7860
CMD ["python", "gemini_web2api.py", "--port", "7860", "--host", "0.0.0.0"]
