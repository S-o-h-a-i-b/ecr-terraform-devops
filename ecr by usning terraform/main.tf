provider "aws" {
  region = "us-east-2"
}
#resource #then resource name
resource "aws_ecr_repository" "my_ecr_repo" {
 #name what u want to give 
  name                 = "test-ecr"
  #Mutability in this context refers to whether the image
  #tags in the ECR repository can be changed or overwritten after they are initially set.
  image_tag_mutability = "MUTABLE"

  #The image_scanning_configuration { scan_on_push = true } block enables automatic image scanning when new images are pushed to the ECR repository, helping to identify vulnerabilities in the images.
  image_scanning_configuration {
    scan_on_push = true
  }
  #applying encryption standard of your ecr registory
  encryption_configuration {
    encryption_type = "AES256"
  }
  tags = {
    Name        = "TEST-ECR"
    Environment = "production"
  }
}
