variable "location" {
  type = map(string)
  default = {
    "primary" = "eastus",
    "secondary"="centralus"
  }
}

variable "shortname" {
  type = map(string)
  default = {
    "primary" = "eu",
    "secondary"="cu"
  }
}

variable "geo" {
  default = "false"
}

variable "geo_active" {
    type = map(string)
  default = {
    geo= "false"
    ark = "true"
  }
}

variable "subnet_ips" {
    type = list
      default = ["10.0.0.0/24","10.0.8.0/24"]
}

variable "firewall_ips" {
    type = list
      default = ["10.0.2.0/24","10.0.3.0/24"]
}


