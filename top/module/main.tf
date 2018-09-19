
variable "change_to_list" {
  type = "list"
}


output "do_something" {
  value = "${var.change_to_list}"
}