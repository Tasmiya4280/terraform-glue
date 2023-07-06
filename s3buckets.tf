resource "aws_s3_bucket" "datasource-bucket" {
  bucket = var.name
  acl    = var.acl
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

#####################################
        #Athena report bucket
#####################################


resource "aws_s3_bucket" "athena-workspace" {
  bucket = var.athena-bucket
  acl    = var.acl
  

  tags = {
    Name        = "Athena-Bucket"
    Environment = "Dev"
  }
}