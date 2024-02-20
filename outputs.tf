output "hostname" {
  value = proxmox_lxc.lxc.hostname
  description = "Hostname of the LXC"
}

output "IPv4" {
  value = proxmox_lxc.lxc.network[0].ip
  description = "IP address of LXC"
}
