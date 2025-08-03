# ベースイメージとしてPythonの公式イメージを使用
FROM python:3.9-slim

# 作業ディレクトリの設定
WORKDIR /app

# 必要なPythonパッケージのインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションコードのコピー
COPY src/ .

# コンテナ起動時のコマンド
CMD ["python", "main.py"]
