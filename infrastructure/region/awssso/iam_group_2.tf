module "cloud_security1" {
    source = "../../..//modules/iam"

    group_name = "security-oludare-group"
    policy_name = "cloud-permission"
    policy_description = " this is a limited permission for cloudsentrics users"
    managed_policies_to_attach = [
        "arn:aws:iam::aws:policy/AmazonS3FullAccess"
    ]
    inline_policy_to_attach = data.aws_iam_policy_document.cloudsentrics1_policy.json
}


data "aws_iam_policy_document" "cloudsentrics1_policy" {
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