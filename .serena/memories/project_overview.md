# プロジェクト概要

このプロジェクトは、AWSとGoogle Cloudのインフラストラクチャをコード（IaC）として管理するためのテンプレートリポジトリです。

## 構造
- `aws/`: AWSインフラストラクチャ関連のコード
  - `Dockerfile`: AWSリソースのデプロイ用コンテナ定義
  - `main.tf`: AWSリソース定義
  - `workflows/`: CI/CD用のGitHub Actions設定
- `googlecloud/`: Google Cloud関連のコード
  - `Dockerfile`: Google Cloudリソースのデプロイ用コンテナ定義
  - `main.tf`: Google Cloudリソース定義
  - `variables.tf`: 変数定義
- `main.tf`: ルートのTerraform設定

## 技術スタック
- Terraform: インフラストラクチャのコード化
- Docker: デプロイメント環境の標準化
- GitHub Actions: CI/CD自動化