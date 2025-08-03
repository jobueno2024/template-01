# Cloud Composerの環境を作成
resource "google_composer_environment" "batch_environment" {
  name    = "batch-composer-env"
  region  = "asia-northeast1"
  project = var.project_id

  config {
    software_config {
      image_version = "composer-2.5.3-airflow-2.5.3"
      
      # 環境変数の設定
      env_variables = {
        ENVIRONMENT = "production"
      }
    }

    node_config {
      service_account = google_service_account.composer_service_account.email
      
      # Composerで使用するマシンタイプの設定
      machine_type = "n1-standard-2"
    }
  }
}

# Composerで使用するサービスアカウントの作成
resource "google_service_account" "composer_service_account" {
  account_id   = "composer-service-account"
  display_name = "Cloud Composer Service Account"
  project      = var.project_id
}

# サービスアカウントへの権限付与
resource "google_project_iam_member" "composer_worker" {
  project = var.project_id
  role    = "roles/composer.worker"
  member  = "serviceAccount:${google_service_account.composer_service_account.email}"
}

# Artifact Registryリポジトリの作成（Dockerイメージの保存用）
resource "google_artifact_registry_repository" "batch_docker_repo" {
  location      = "asia-northeast1"
  repository_id = "batch-docker-repo"
  description   = "Docker repository for batch processes"
  format        = "DOCKER"
  project       = var.project_id
}
