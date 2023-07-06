resource "aws_athena_workgroup" "athena-workergroup" {
  name = var.workgroup-name

  configuration {
    enforce_workgroup_configuration    = true
    publish_cloudwatch_metrics_enabled = false


    result_configuration {
      output_location = "s3://${aws_s3_bucket.athena-workspace.bucket}/"
    }
  }


}