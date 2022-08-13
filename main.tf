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

output "hello_world" {
  value = "Hello, ${var.subject}!"
}
