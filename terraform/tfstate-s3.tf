# terraform {
#   backend "s3" {
#     bucket            = "terraform-state-jacosta"
#     key               = "global/s3/terraform.tfstate"
#     region            = "eu-west-1"
#     dynamodb_table    = "terraform-state-locking"
#     encrypt           = true
#   }
# }

resource "aws_s3_bucket" "terrafom_state" {
  bucket = "terraform-state-jacosta"

  lifecycle {
    prevent_destroy = false
  }

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name = "terraform-state-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}