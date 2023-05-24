###################################################################################
# Group policies:
###################################################################################
resource "aws_iam_group_policy_attachment" "AttachGroup1" {
  group       = aws_iam_group.megadados.name
  policy_arn = aws_iam_policy.access-same-1.arn
}

resource "aws_iam_group_policy_attachment" "AttachGroup2" {
  group       = aws_iam_group.redes.name
  policy_arn = aws_iam_policy.access-same-2.arn
}

resource "aws_iam_group_policy_attachment" "AttachGroup3" {
  group       = aws_iam_group.machine.name
  policy_arn = aws_iam_policy.access-same-3.arn
}

resource "aws_iam_group_policy_attachment" "AttachGroup4" {
  group       = aws_iam_group.inteligencia.name
  policy_arn = aws_iam_policy.access-same-4.arn
}
###################################################################################
# Blue policies:
###################################################################################
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
  policy_arn = aws_iam_policy.stsAccess.arn
}

###################################################################################
# Pink policies:
###################################################################################
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
###################################################################################
# Purple policies:
###################################################################################
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
###################################################################################
# Green policies:
###################################################################################
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