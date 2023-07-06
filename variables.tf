variable "region" {
    description = "Default region for AWS in which resources will be created."
    default = "ap-south-1" 
}

variable "name" {
    description = "The datasource bucket name"
    default = "aws-glue-sourcebucket"
}

variable "acl" {
    description = "The acl value for the data source bucket"
    default = "true"
}

variable "athena-bucket" {
    description = "The output storage bucket for athena report"
    default = "aws-glue-athenareport"
}

variable "catalogue-db" {
    description = "Name of the glue catalogue database"
    default = "aws-glue-catalogue-db"
}

variable "glue-crawler" {
    description = "The name of the glue crawler"
    default = "aws-glue-crawler"
}

variable "workgroup-name" {
    description = "Name of Athena worker group"
    default = "aws-glue-workergroup"
  
}