# Python 기반 Docker 이미지 사용
FROM python:3.10-slim

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 복사 및 설치
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 복사
COPY . .

# Django 애플리케이션 실행
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
