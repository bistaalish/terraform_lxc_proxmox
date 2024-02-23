resource "proxmox_lxc" "lxc" {
    # General
    target_node = var.general["node"]
    hostname = var.general["hostname"]
    password =  var.password
    unprivileged = try(var.general["unprivileged"],"true")
    start = try(var.general["start"],"false")
    ssh_public_keys = <<-EOT
    ${try(var.ssh_public_key,"")}
    EOT
    features {
        nesting = try(var.general["nesting"],true)
    }
    tags = try(var.general["tags"],"terraform")

    # Template
    ostemplate = var.ostemplate

    # Disk
    rootfs {
    storage = try(var.general.disk_name,"local")
    size = try(var.general.disk_size,"8G")
    }
    # CPU 
    cores = try(var.general.cpus,"1")
    
    # Memory
    swap = try(var.general.memory,"512")
    memory = try(var.general.memory,"512")
    # Network
    network {
        name = var.network[0]
        bridge = var.network[1]
        ip = var.network[2]
        gw = var.network[3]
    }
}
