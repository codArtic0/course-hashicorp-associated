terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token = var.token
}

resource "github_repository" "repo" {
  name        = "course-hashicorp-associated"
  description = "Repositório criado para estudos do Curso HashiCorp Certified: Terraform Associate 2026"

  visibility = "public"
  
}

output "link_git" {
  value = github_repository.repo.git_clone_url
}