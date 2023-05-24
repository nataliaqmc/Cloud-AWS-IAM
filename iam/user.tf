###################################################################################
# Create users with tags:
###################################################################################
resource "aws_iam_user" "user_create" {
  name = var.AWS_USER_NAME1
  tags = {"access-project":"${var.AWS_PROJECT_1}",
          "access-team": "${var.AWS_TEAM_1}"  
  }
}
resource "aws_iam_user" "user_createPink" {
  name = var.AWS_USER_NAME2
  tags = {"access-project":"${var.AWS_PROJECT_2}",
          "access-team": "${var.AWS_TEAM_1}"  
  }
}

resource "aws_iam_user" "user_createPurple" {
  name = var.AWS_USER_NAME3
  tags = {"access-project":"${var.AWS_PROJECT_3}",
          "access-team": "${var.AWS_TEAM_2}"  
  }
}
resource "aws_iam_user" "user_createGreen" {
  name = var.AWS_USER_NAME4
  tags = {"access-project":"${var.AWS_PROJECT_4}",
          "access-team": "${var.AWS_TEAM_2}"  
  }
}



