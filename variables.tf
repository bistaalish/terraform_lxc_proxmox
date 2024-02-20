variable "proxmox" {
  type = map(string)
  description = "Proxmox String"
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

