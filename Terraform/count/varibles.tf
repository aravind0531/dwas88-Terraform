variable "instances" {
        type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
  type = string
  default = "Z0400905HE9ZPZL9V78D"
}

variable "domain" {
  type = string
  default = "devdaws88s.online"
}