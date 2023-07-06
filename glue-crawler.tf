resource "aws_glue_crawler" "my-crawler" {
  database_name = aws_glue_catalog_database.aws_glue_catalog_database.name
  name          = var.glue-crawler
  role          = aws_iam_role.glue_crawler_role.arn

  s3_target {
    path = "s3://${aws_s3_bucket.datasource-bucket.bucket}"
  }

  catalog_target {
    database_name = aws_glue_catalog_database.aws_glue_catalog_database.name
  }
}