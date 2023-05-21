resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.user_create.name
  policy_arn = "arn:aws:iam::[account_id]:policy/AssumeRole"
}