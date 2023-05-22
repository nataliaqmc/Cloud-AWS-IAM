resource "aws_iam_group" "desenvolvedores" {
  name = var.AWS_TEAM_1
  path = "/users/"
}

resource "aws_iam_group" "marketing" {
  name = var.AWS_TEAM_2
  path = "/users/"
}

resource "aws_iam_group" "megadados" {
  name = var.AWS_PROJECT_1
  path = "/users/"
}
resource "aws_iam_group" "redes" {
  name = var.AWS_PROJECT_2
  path = "/users/"
}
resource "aws_iam_group" "machine" {
  name = var.AWS_PROJECT_3
  path = "/users/"
}
resource "aws_iam_group" "inteligencia" {
  name = var.AWS_PROJECT_4
  path = "/users/"
}




resource "aws_iam_group_membership" "equipeDesenvolvedores" {
  name = "equipeDesenvolvedores"
  users = [
    aws_iam_user.user_create.name,
    aws_iam_user.user_createPink.name,
  ]

  group = aws_iam_group.desenvolvedores.name
}

resource "aws_iam_group_membership" "equipeMarketing" {
  name = "equipeMarketing"
  users = [
    aws_iam_user.user_createPurple.name,
    aws_iam_user.user_createGreen.name,
  ]
  group = aws_iam_group.marketing.name
}

resource "aws_iam_group_membership" "equipeMegadados" {
  name = "equipeMegadados"
  users = [
    aws_iam_user.user_create.name,
  ]
  group = aws_iam_group.megadados.name
}

resource "aws_iam_group_membership" "equipeMachine" {
  name = "equipeMachine"
  users = [
    aws_iam_user.user_createPurple.name,
  ]
  group = aws_iam_group.machine.name
}
resource "aws_iam_group_membership" "equipeInteligencia" {
  name = "equipeInteligencia"
  users = [
    aws_iam_user.user_createGreen.name,
  ]
  group = aws_iam_group.inteligencia.name
}
resource "aws_iam_group_membership" "equipeRedes" {
  name = "equipeRedes"
  users = [
    aws_iam_user.user_createPink.name,
  ]
  group = aws_iam_group.redes.name
}




