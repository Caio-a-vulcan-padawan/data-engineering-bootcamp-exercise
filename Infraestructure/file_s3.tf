resource "aws_s3_bucket_object" "job_spark" {
  bucket = aws_s3_bucket_dl.id
  key = "IGTI EDC/Pysprk/job-spark_from_tf.py"
  acl = "private"
  source = "../job_spark.py"
  etag = filemd5("../job_spark.py")
}