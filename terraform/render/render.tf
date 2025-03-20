variable "render_api_key" {
    type = string
}

variable "render_owner_id" {
    type = string
}

terraform {
  backend "local" {
    path = "../backend.tfstate"
  }
  required_providers {
    render = {
      source = "render-oss/render"
      version = "1.6.0"
    }
  }
}

provider "render" {
  # Configuration options
  api_key = var.render_api_key
  owner_id = var.render_owner_id
}