variable "playbook" {}

variable "private_key_path" {
  type    = string
  default = ""
}

variable "dry_run" {
  type    = bool
  default = true
}

variable "ansible_vars_yaml" {
  type    = string
  default = "blank: blank"
}

variable "ssh_private_key_file" {
  default = ""
}

variable "ssh_proxy_opts" {
  default = "-o ProxyCommand='nc -x localhost:1080 %h %p'"
}


variable "triggers" {
  type    = list
  default = []
}

variable "username" {
  type    = string
  default = ""
}

