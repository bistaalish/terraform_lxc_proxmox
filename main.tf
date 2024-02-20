resource "proxmox_lxc" "lxc" {
    # General
    target_node = var.general["node"]
    hostname = var.general["hostname"]
    password =  var.general["password"]
    unprivileged = var.general["unprivileged"]
    start = var.general["start"]
    ssh_public_keys = <<-EOT
    ${var.general["ssh_public_key"]}
    EOT
    features {
        nesting = var.general[nesting]
    }
    tags = var.general["tags"]

    # Template
    ostemplate = var.ostemplate

    # Disk
    rootfs {
    storage = var.disk[0]
    size = var.disk[1]
    }
    # CPU 
    cores = var.cpus
    
    # Memory
    swap = var.memory
    memory = var.memory
    # Network
    network {
        name = var.network[0]
        bridge = var.network[1]
        ip = var.network[3]
        gw = var.network[4]
    }

}