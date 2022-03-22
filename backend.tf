terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "wolke"

    workspaces {
      name = "terraform-workshop"
    }
  }
}