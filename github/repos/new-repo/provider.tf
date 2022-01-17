provider "github" {
    token = "${var.GH_TOKEN}"
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}