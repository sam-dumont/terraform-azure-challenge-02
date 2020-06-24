provider "azurerm" {
  features {}
}

terraform {
  required_version = ">= 0.12"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "awesomesites"

    workspaces {
      name = "terraform-azure-challenge-02"
    }
  }
}