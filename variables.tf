variable "proxmox" {
  type = map(string)
  description = "Proxmox String"
  default = {
    "tls_insecure" = "true"
  }
}
variable "general" {
  type = map(string)
  description = "General Configurations"
  default = {
    "unprivileged" = "true",
    "nesting" = "true",
    "start" = "false",
    "onboot" = "false"
  }
}

variable "ostemplate" {
  type = string
  description = "Template of OS."
}

variable "disk" {
  type = list(string)
  description = "Disk Space"
  default = [ "local","8G" ]
}

variable "cpus" {
  type = string
  description = "CPU"
  default = "1"
}

variable "memory" {
  type = string
  default = "512"
}
variable "network" {
  type = list(string)
  default = [ "eth0","vmbr0","dhcp" ]
}

