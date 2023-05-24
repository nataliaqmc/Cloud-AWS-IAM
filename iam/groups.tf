###################################################################################
# Creating groups to each team:
###################################################################################
resource "aws_iam_group" "desenvolvedores" {
  name = var.AWS_TEAM_1
  path = "/users/"
}

resource "aws_iam_group" "marketing" {
  name = var.AWS_TEAM_2
  path = "/users/"
}

###################################################################################
# Creating groups to each project:
###################################################################################
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


###################################################################################
# Adding users to teams:
###################################################################################
resource "aws_iam_group_membership" "equipeDesenvolvedores" {
  name = "equipe-${var.AWS_TEAM_1}"
  users = [
    aws_iam_user.user_create.name,
    aws_iam_user.user_createPink.name,
  ]

  group = aws_iam_group.desenvolvedores.name
}

resource "aws_iam_group_membership" "equipeMarketing" {
  name = "equipe-${var.AWS_TEAM_2}"
  users = [
    aws_iam_user.user_createPurple.name,
    aws_iam_user.user_createGreen.name,
  ]
  group = aws_iam_group.marketing.name
}

###################################################################################
# Adding users to projects:
###################################################################################
resource "aws_iam_group_membership" "equipeMegadados" {
  name = "equipeM-${var.AWS_PROJECT_1}"
  users = [
    aws_iam_user.user_create.name,
  ]
  group = aws_iam_group.megadados.name
}
resource "aws_iam_group_membership" "equipeRedes" {
  name = "equipe-${var.AWS_PROJECT_2}"
  users = [
    aws_iam_user.user_createPink.name,
  ]
  group = aws_iam_group.redes.name
}
resource "aws_iam_group_membership" "equipeMachine" {
  name = "equipe-${var.AWS_PROJECT_3}"
  users = [
    aws_iam_user.user_createPurple.name,
  ]
  group = aws_iam_group.machine.name
}
resource "aws_iam_group_membership" "equipeInteligencia" {
  name = "equipe-${var.AWS_PROJECT_4}"
  users = [
    aws_iam_user.user_createGreen.name,
  ]
  group = aws_iam_group.inteligencia.name
}





