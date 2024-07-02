variable "ecr_name" {
  description = "Name of the ECR repository"
  type        = string
  default     = "test-ecr"
}

variable "image_tag_mutability" {
  description = "Image tag mutability for the ECR repository"
  type        = string
  default     = "MUTABLE"
}

variable "scan_on_push" {
  description = "Enable image scanning on push to ECR"
  type        = bool
  default     = true
}

variable "encryption_type" {
  description = "Encryption type for the ECR repository"
  type        = string
  default     = "AES256"
}

variable "tags" {
  description = "Tags to apply to the ECR repository"
  type        = map(string)
  default     = {
    Name        = "TEST-ECR"
    Environment = "production"
  }
}
