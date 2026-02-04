variable "ec2_instance_type" {
  type    = string
}

variable "ec2_root_storage_size" {
  type    = number
}

variable "ec2_root_storage_type" {
  type    = string
}

variable "ec2_ami_id" {
  type    = string
}

#Notes: Variables are used to store values that can be used in the configuration. They are defined in a variables.tf file. Used to avoid hardcode values in the configuration.Using variables makes the code more maintainable and reusable.

