#argument ke value ka data type decleare karte hai , default value is optional
variable "ami" {
  type = string
}

variable "instance_type" {
  type = string

}

variable "instance_count" {
  type = number
}