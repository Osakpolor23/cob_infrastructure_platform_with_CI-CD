module "iam" {
  source = "github.com/Osakpolor23/cob_infrastructure_platform_osas/modules/iam"

  project_name              = var.project_name
  environment               = var.environment
  data_bucket_arn           = module.s3_bucket.bucket_arn
  athena_results_bucket_arn = "arn:aws:s3:::${lower(var.project_name)}-${var.environment}-athena-results-*"
  iam_group                 = var.iam_group
  iam_users                 = var.iam_users
}

module "s3_bucket" {
  source = "github.com/Osakpolor23/cob_infrastructure_platform_osas/modules/s3"

  project_name = var.project_name
  environment  = var.environment
  bucket_name  = var.bucket_name
}

module "data_platform_services" {
  source = "github.com/Osakpolor23/cob_infrastructure_platform_osas/modules/data_platform_services"

  project_name          = var.project_name
  environment           = var.environment
  data_bucket_name      = module.s3_bucket.bucket_id
  glue_crawler_role_arn = module.iam.glue_crawler_role_arn
}








