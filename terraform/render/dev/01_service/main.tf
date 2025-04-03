resource "render_web_service" "front" {
    name = "front"
    plan = "starter"
    region = "frankfurt"
    runtime_source = {
        image = {
            image_url = var.front_registry_url
            tag = "latest"
            registry_credentials_id = var.registry_credentials_id
        }
    }
}

resource "render_web_service" "back" {
    name = "back"
    plan = "starter"
    region = "frankfurt"
    runtime_source = {
        image = {
            image_url = var.back_registry_url
            tag = "latest"
            registry_credentials_id = var.registry_credentials_id
        }
    }
}

resource "render_registry_credential" "github_credentials" {
  name       = "github-credentials"
  registry   = "GITHUB"
  username   = var.github_user
  auth_token = var.github_credentials
}
