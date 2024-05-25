module "it_engineer_prod" {
    source = "../../..//modules/group"
    
    group_name = "it_engineer_prod"
    policy_name = "prod-policy"
    region      = "us-east-1"
    policy_description = "cloudsentrics-it_engineer_prod-policies"
    inline_policy_to_attach = data.aws_iam_policy_document.it_engineer_prod_inline_policy.json
    managed_policies_to_attach = [
        "arn:aws:iam::aws:policy/AmazonS3FullAccess"
    ]
}

data "aws_iam_policy_document" "it_engineer_prod_inline_policy" {
    statement {
        sid = ""
        actions = [
            "cloudtrail:*",
            "cloudwatch:*"
        ]
        resources = ["*"]
    }

    statement {
        sid = ""
        actions = [
            "ec2:*",
            "s3:*"
        ]
        resources = ["*"]
    }
}