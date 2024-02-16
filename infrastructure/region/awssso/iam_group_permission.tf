module "cloud_sentrics" {
    source = "../../..//modules/iam"

    group_name = "cloudsentrics"
    policy_name = "cloudsentrics-permission"
    policy_description = " this is a limited permission for cloudsentrics users"
    managed_policies_to_attach = [
        "arn:aws:iam::aws:policy/AmazonS3FullAccess",
        "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
    ]
    inline_policy_to_attach = data.aws_iam_policy_document.cloudsentrics_policy.json
}


data "aws_iam_policy_document" "cloudsentrics_policy" {
  statement {
    sid = "1"

    actions = [
      "kms:Enrypt"
    ]
    resources = [
        "*",
    ]
  }
}

