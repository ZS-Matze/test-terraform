# vim: set ft=config :

locals {
    project_slug = "foo"
    region = "fra1"
}

resource "digitalocean_tag" "project" {
    name = local.project_slug
}

resource "digitalocean_tag" "terraform" {
    name = "terraform"
}

variable "do_token" {}

provider "digitalocean" {
    token = var.do_token
}

terraform {
    backend "remote" {
        organization = "zweischneider"
        workspaces {
            name = "foo"
        }
    }
}
