module "prod_s3_bucket" {
    source = "../../..//modules/s3"

    region = "us-east-1"
    bucket_name = "prod-batch5-devsec-bucket"
}

module "dev_s3_bucket" {
    source = "../../..//modules/s3"

    region = "us-east-1"
    bucket_name = "dev-batch5-devsec-bucket"
}
