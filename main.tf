terraform {
  required_version = ">= 1.1.0"
  cloud {
    organization = "Frontenac-Technoloogy-Services"
    hostname = "app.terraform.io"
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
