variable "vm_gateway" { 
   description 	= "Шлюз"
   type 	= string
   default 	= "192.168.1.1"
}

variable "vm_password" {
   description 	= "Пароль пользователя"
   type 	= string
   sensitive 	= true
   default 	= "12345"
}

variable "ssh_public_key" {
   description 	= "Публичный ЅSH ключ для доступа"
   type 	= string
   default 	= ""
}

variable "target_node" {
   description	= "Нод Proxmox"
   type 	= string
   default 	= "proxmox-host"
}

variable "vm_ip" {
   description 	= "IP адрес VM (с маской)"
   type 	= string
   default 	= "192.168.1.150/24"
}

variable "vm_user" {
   description	 = "IP адрес VM (с маской)"
   type		 = string
   default	 = "root@pam"
}