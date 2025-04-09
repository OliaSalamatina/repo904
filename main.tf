variable "greeting" {
  type    = string
  default = "Hello from Scalr!"
}

output "my_greeting" {
  value = var.greeting
}
