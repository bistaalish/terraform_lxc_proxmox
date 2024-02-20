terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc1"
    }
  }
}

provider "proxmox" {
  pm_api_url = var.proxmox["url"]
  pm_api_token_secret = var.proxmox["secret"]
  pm_api_token_id = var.proxmox["token"]
  pm_tls_insecure = var.proxmox["tls_insecure"]
}