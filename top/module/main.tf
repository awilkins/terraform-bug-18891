
variable "change_to_list" {
  type = "string"
}


output "do_something" {
  value = "${var.change_to_list}"
}