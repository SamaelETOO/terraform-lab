variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "routing_method" {
  type = string
}

variable "endpoints" {
  type = map(object({
    name      = string
    target_id = string
  }))
}

variable "tags" {
  type = map(string)
}
