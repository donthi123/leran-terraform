# Declare the variable with value

variable "x" {
  default = 100
}

# Declare the variable without value
#variable "y" {}

# print variable
output "x" {
  value = var.x
}