terraform {
  cloud {
    organization = "Frontenac-Technology-Services"

    workspaces {
      name = "helloworld"
    }
  }
}

variable "subject" {
   type = string
   default = "World"
   description = "Subject to hello"
}


variable "test1" {
   type = string
}
variable "test2" {
   type = string
}
variable "secret1" {
   type = string
   sensitive = true
}
variable "secret2" {
   type = string
   sensitive = true
}

output "hello_world" {
  value = "Hello, ${var.subject}!"
}

output "cm_and_secret" {
  value = "test1: ${var.test1} | test2: ${var.test2} | secret1: ${var.secret1} | secret2: ${var.secret2}" 
}
