# Pythonの公式イメージを使う
FROM python:3.10-slim

# 作業ディレクトリ作成
WORKDIR /app

# ファイルコピー
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# アプリを起動
CMD ["python", "app.py"]
