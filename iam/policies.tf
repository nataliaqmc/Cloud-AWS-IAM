###################################################################################
# Creating STS Full Access Policy:
###################################################################################
resource "aws_iam_policy" "stsAccess" {
  name = "stsFullAccess"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "sts:AssumeRole",
            "Resource": "arn:aws:iam::${var.AWS_ACCOUNT_ID}:role/UpdateAPP"
        }
    ]
}
EOF
}

###################################################################################
# Creating "access-same-project-team" policy:
###################################################################################
resource "aws_iam_policy" "access-same-project-team" {
  name = "access-same-project-team"
  policy = "${file("policies/AccessSameProjectTeamABAC.json")}"
}


###################################################################################
# Creating access same project-team policy:
###################################################################################
resource "aws_iam_policy" "access-same-1" {
  name = "access-same-${var.AWS_PROJECT_1}-${var.AWS_TEAM_1}"
  policy = "${file("policies/AccessSame-${var.AWS_PROJECT_1}-${var.AWS_TEAM_1}.json")}"
}

resource "aws_iam_policy" "access-same-2" {
  name = "access-same-${var.AWS_PROJECT_2}-${var.AWS_TEAM_1}"
  policy = "${file("policies/AccessSame-${var.AWS_PROJECT_2}-${var.AWS_TEAM_1}.json")}"
}

resource "aws_iam_policy" "access-same-3" {
  name = "access-same-${var.AWS_PROJECT_3}-${var.AWS_TEAM_2}"
  policy = "${file("policies/AccessSame-${var.AWS_PROJECT_3}-${var.AWS_TEAM_2}.json")}"
}

resource "aws_iam_policy" "access-same-4" {
  name = "access-same-${var.AWS_PROJECT_4}-${var.AWS_TEAM_2}"
  policy = "${file("policies/AccessSame-${var.AWS_PROJECT_4}-${var.AWS_TEAM_2}.json")}"
}



