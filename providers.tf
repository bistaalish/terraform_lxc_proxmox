terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc1"
    }
  }
}

provider "proxmox" {
  pm_api_url = var.pm_url
  pm_api_token_secret = var.pm_secret
  pm_api_token_id = var.pm_token_id
  pm_tls_insecure = var.pm_tls_insecure
}