# Group policies:
resource "aws_iam_group_policy_attachment" "AttachGroup1" {
  group       = aws_iam_group.desenvolvedores.name
  policy_arn = "arn:aws:iam::${var.AWS_ACCOUNT_ID}:policy/access-same-project-team"
}

resource "aws_iam_group_policy_attachment" "AttachGroup2" {
  group       = aws_iam_group.marketing.name
  policy_arn = "arn:aws:iam::${var.AWS_ACCOUNT_ID}:policy/access-same-project-team"
}

resource "aws_iam_group_policy_attachment" "AttachGroup3" {
  group       = aws_iam_group.desenvolvedores.name
  policy_arn = "arn:aws:iam::${var.AWS_ACCOUNT_ID}:policy/access-same-project-team"
}

resource "aws_iam_group_policy_attachment" "AttachGroup4" {
  group       = aws_iam_group.marketing.name
  policy_arn = "arn:aws:iam::${var.AWS_ACCOUNT_ID}:policy/access-same-project-team"
}

# Blue policies:
resource "aws_iam_user_policy_attachment" "iam1" {
  user       = aws_iam_user.user_create.name
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

resource "aws_iam_user_policy_attachment" "DirectConnect" {
  user       = aws_iam_user.user_create.name
  policy_arn = "arn:aws:iam::aws:policy/AWSDirectConnectFullAccess"
}

resource "aws_iam_user_policy_attachment" "sts" {
  user       = aws_iam_user.user_create.name
  policy_arn = "arn:aws:iam::${var.AWS_ACCOUNT_ID}:policy/stsFullAccess"
}


# Pink policies:
resource "aws_iam_user_policy_attachment" "kinesis" {
  user       = aws_iam_user.user_createPink.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonKinesisFullAccess"
}

resource "aws_iam_user_policy_attachment" "rds" {
  user       = aws_iam_user.user_createPink.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
}

resource "aws_iam_user_policy_attachment" "beanstalk" {
  user       = aws_iam_user.user_createPink.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-AWSElasticBeanstalk"
}

resource "aws_iam_user_policy_attachment" "emr" {
  user       = aws_iam_user.user_createPink.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEMRFullAccessPolicy_v2"
}

# Purple policies:
resource "aws_iam_user_policy_attachment" "LoadBalancing" {
  user       = aws_iam_user.user_createPurple.name
  policy_arn = "arn:aws:iam::aws:policy/ElasticLoadBalancingFullAccess"
}

resource "aws_iam_user_policy_attachment" "ebs" {
  user       = aws_iam_user.user_createPurple.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
}

resource "aws_iam_user_policy_attachment" "redshift" {
  user       = aws_iam_user.user_createPurple.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonRedshiftFullAccess"
}

# Green policies:
resource "aws_iam_user_policy_attachment" "CloudWatch" {
  user       = aws_iam_user.user_createGreen.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonCloudWatchRUMFullAccess"
}

resource "aws_iam_user_policy_attachment" "vpc" {
  user       = aws_iam_user.user_createGreen.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
}

resource "aws_iam_user_policy_attachment" "ec2" {
  user       = aws_iam_user.user_createGreen.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}