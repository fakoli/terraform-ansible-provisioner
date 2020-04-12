
resource "null_resource" "ansible_provisioner" {

  triggers = {
    DEPENDS_ON = join(",", var.triggers)
  }

  provisioner "local-exec" {
    command = "sleep 20"
  }

  provisioner "local-exec" {
    command = <<EOF
    ansible-playbook  ${var.dry_run ? "--check --diff" : ""} ${var.username == "" ? "" : format("-u %s", var.username)} ${var.ssh_private_key_file == "" ? "" : format("--private-key %s", var.ssh_private_key_file)} ${var.playbook}
    EOF
  }

}
