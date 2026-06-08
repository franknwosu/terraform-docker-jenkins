terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.2.0"
}

provider "docker" {
  # Uses the local system's Docker socket by default
}

resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = true
}

resource "docker_container" "nginx_server" {
  name  = var.container_name
  image = docker_image.nginx.image_id
  ports {
    internal = 80
    external = 8088
  }

  # DEFINED AS BLOCKS (No equals sign)
  labels {
    label = "Name"
    value = "Local-Nginx-Demo"
  }

  labels {
    label = "Environment"
    value = "Dev"
  }

  labels {
    label = "ManagedBy"
    value = "Terraform"
  }
}

output "access_url" {
  value       = "http://localhost:8088"
  description = "The local URL to access your deployed Nginx application"
}

