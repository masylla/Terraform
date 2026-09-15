output "bucket_name" {
  description = "Name of the S3 bucket."
  value       = aws_s3_bucket.mybucket.bucket
}

output "bucket_id" {
  description = "ID of the S3 bucket."
  value       = aws_s3_bucket.mybucket.id
}

output "bucket_arn" {
  description = "ARN of the S3 bucket."
  value       = aws_s3_bucket.mybucket.arn
}

output "bucket_region" {
  description = "AWS region where the S3 bucket is located."
  value       = aws_s3_bucket.mybucket.region
}

output "bucket_regional_domain_name" {
  description = "Regional DNS name of the S3 bucket."
  value       = aws_s3_bucket.mybucket.bucket_regional_domain_name
}

output "bucket_versioning_status" {
  description = "Versioning status configured for the S3 bucket."
  value       = aws_s3_bucket_versioning.mybucket.versioning_configuration[0].status
}

output "bucket_encryption_algorithm" {
  description = "Default server-side encryption algorithm for the S3 bucket."
  value       = one(one(aws_s3_bucket_server_side_encryption_configuration.mybucket.rule).apply_server_side_encryption_by_default).sse_algorithm
}

output "bucket_public_access_block" {
  description = "Public access block settings for the S3 bucket."
  value = {
    block_public_acls       = aws_s3_bucket_public_access_block.mybucket.block_public_acls
    block_public_policy     = aws_s3_bucket_public_access_block.mybucket.block_public_policy
    ignore_public_acls      = aws_s3_bucket_public_access_block.mybucket.ignore_public_acls
    restrict_public_buckets = aws_s3_bucket_public_access_block.mybucket.restrict_public_buckets
  }
}
