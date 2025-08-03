# 推奨コマンド

## Terraform関連
```bash
# Terraformの初期化
terraform init

# 実行計画の確認
terraform plan

# インフラストラクチャの適用
terraform apply

# インフラストラクチャの破棄
terraform destroy
```

## Docker関連
```bash
# AWSデプロイメントコンテナのビルド
cd aws
docker build -t aws-deploy .

# Google Cloudデプロイメントコンテナのビルド
cd googlecloud
docker build -t gcloud-deploy .
```

## Git関連
```bash
# ブランチの作成と切り替え
git checkout -b feature/new-feature

# 変更の確認
git status

# 変更のステージング
git add .

# コミット
git commit -m "説明的なコミットメッセージ"

# プッシュ
git push origin feature/new-feature
```