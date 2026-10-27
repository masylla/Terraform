terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 4.0"
    }
  }
}

provider "docker" {}

# For Windows add the following indented code inside the curly braces above: host    = "npipe:////.//pipe//docker_engine"

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "test-nginx-container"
  ports {
    internal = 80
    external = 8000
  }
}
