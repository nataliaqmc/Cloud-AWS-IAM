###################################################################################
# Creating roles:
###################################################################################
resource "aws_iam_role" "roleAssume" {
  name = "access-${var.AWS_PROJECT_1}-${var.AWS_TEAM_1}"
  tags = {"access-project":"${var.AWS_PROJECT_1}",
          "access-team": "${var.AWS_TEAM_1}"  
  }
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::${var.AWS_ACCOUNT_ID}:root"
            },
            "Action": "sts:AssumeRole",
            "Condition": {
                "StringEquals": {"iam:ResourceTag/access-project": "${var.AWS_PROJECT_1}",
                                 "iam:ResourceTag/access-team":"${var.AWS_TEAM_1}"}
            }
        }
    ]
}
EOF
}
resource "aws_iam_role" "roleAssume2" {
  name = "access-${var.AWS_PROJECT_2}-${var.AWS_TEAM_1}"
  tags = {"access-project":"${var.AWS_PROJECT_2}",
          "access-team": "${var.AWS_TEAM_1}"  
  }
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::${var.AWS_ACCOUNT_ID}:root"
            },
            "Action": "sts:AssumeRole",
            "Condition": {
                "StringEquals": {"iam:ResourceTag/access-project": "${var.AWS_PROJECT_2}",
                                 "iam:ResourceTag/access-team":"${var.AWS_TEAM_1}"}
            }
        }
    ]
}
EOF
}

resource "aws_iam_role" "roleAssume3" {
  name = "access-${var.AWS_PROJECT_3}-${var.AWS_TEAM_2}"
  tags = {"access-project":"${var.AWS_PROJECT_3}",
          "access-team": "${var.AWS_TEAM_2}"  
  }
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::${var.AWS_ACCOUNT_ID}:root"
            },
            "Action": "sts:AssumeRole",
            "Condition": {
                "StringEquals": {"iam:ResourceTag/access-project": "${var.AWS_PROJECT_3}",
                                 "iam:ResourceTag/access-team":"${var.AWS_TEAM_2}"}
            }
        }
    ]
}
EOF
}

resource "aws_iam_role" "roleAssume4" {
  name = "access-${var.AWS_PROJECT_4}-${var.AWS_TEAM_2}"
  tags = {"access-project":"${var.AWS_PROJECT_4}",
          "access-team": "${var.AWS_TEAM_2}"  
  }
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::${var.AWS_ACCOUNT_ID}:root"
            },
            "Action": "sts:AssumeRole",
            "Condition": {
                "StringEquals": {"iam:ResourceTag/access-project": "${var.AWS_PROJECT_4}",
                                 "iam:ResourceTag/access-team":"${var.AWS_TEAM_2}"}
            }
        }
    ]
}
EOF
}


###################################################################################
# Attaching policies to roles:
###################################################################################
resource "aws_iam_role_policy_attachment" "attach1" {
  role       = aws_iam_role.roleAssume.name
  policy_arn = aws_iam_policy.access-same-1.arn
}
resource "aws_iam_role_policy_attachment" "attach2" {
  role       = aws_iam_role.roleAssume2.name
  policy_arn = aws_iam_policy.access-same-2.arn
}
resource "aws_iam_role_policy_attachment" "attach3" {
  role       = aws_iam_role.roleAssume3.name
  policy_arn = aws_iam_policy.access-same-3.arn
}
resource "aws_iam_role_policy_attachment" "attach4" {
  role       = aws_iam_role.roleAssume4.name
  policy_arn = aws_iam_policy.access-same-4.arn
}