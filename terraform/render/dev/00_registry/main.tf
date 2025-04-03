resource "render_registry_credential" "github_crendentials" {
  name       = "github-credentials"
  registry   = "GITHUB"
  username   = var.github_user
  auth_token = var.github_crendentials
}