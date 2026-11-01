region       = "us-east-1"
project_name = "cob"
environment  = "dev"
bucket_name  = "s3-bucket"
iam_group    = "analysts"
iam_users = {
  "John-analyst" = {
    groups         = ["cob-dev-analysts"]
    console_access = true
  },
  "Richard-analyst" = {
    groups         = ["cob-dev-analysts"]
    console_access = true
  },
  "Jane-analyst" = {
    groups         = ["cob-dev-analysts"]
    console_access = true
  }
}