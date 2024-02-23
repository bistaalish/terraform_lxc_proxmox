variable "pm_url" {
  type = string
}
variable "pm_secret" {
  type = string
}

variable "pm_token_id" {
  type = string
}
variable "pm_tls_insecure" {
  default = "true"
  type = string
}
variable "general" {
  type = map(string)
  description = "General Configurations"
}

variable "ostemplate" {
  type = string
  description = "Template of OS."
}

variable "network" {
  type = list(string)
  default = [ "eth0","vmbr0","dhcp","" ]
}

variable "password" {
  type = string
  default = "admin123!"
  description = "Root password for the container"
}

variable "ssh_public_key" {
  type = string
  default = ""
  description = "SSH public key for the template"
}

