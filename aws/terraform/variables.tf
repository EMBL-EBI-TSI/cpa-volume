variable "name" {
  default     = "volume"
  description = "Name of the block storage volume"
  type        = "string"
}

variable "size" {
  default     = 10
  description = "Volume size in GB"
  type        = "string"
}

variable "region" {
  default     = "eu-west-1"
  description = "The region where the block volume will be deployed"
  type        = "string"
}

variable "availability_zones" {
  default = {
    "us-west-2" = "us-west-2a"
    "eu-west-1" = "eu-west-1a"
  }

  description = "The availability zone within the region where the block volume will be deployed"
  type        = "map"
}

variable "volume_type" {
  default     = "gp2"
  description = "Volume type to be used for this volume"
  type        = "string"
}
