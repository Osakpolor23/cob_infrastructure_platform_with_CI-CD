output "s3_bucket_id" {
  description = "ID (name) of the S3 bucket"
  value       = module.s3_bucket.bucket_id
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = module.s3_bucket.bucket_arn
}

output "glue_database_name" {
  description = "The generated Amazon Glue Catalog DB name"
  value       = module.data_platform_services.glue_database_name
}

output "glue_crawler_name" {
  description = "The generated Glue Crawler name that scans the source s3 bucket under the hood"
  value       = module.data_platform_services.glue_crawler_name
}

output "athena_results_bucket" {
  description = "The target s3 bucket name that stores the Athena query results"
  value       = module.data_platform_services.athena_results_bucket
}

output "athena_results_bucket_arn" {
  description = "ARN of the Athena query results bucket"
  value       = module.data_platform_services.athena_results_bucket_arn
}

output "athena_workgroup_name" {
  description = "The Athena Workgroup name that enforces the query result target location"
  value       = module.data_platform_services.athena_workgroup_name
}
