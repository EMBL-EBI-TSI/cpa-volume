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

variable "description" {
  default     = "Generic block storage volume for ecp"
  description = "Description of the block volume"
  type        = "string"
}
