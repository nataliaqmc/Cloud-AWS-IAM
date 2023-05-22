resource "aws_iam_user" "user_create" {
  name = var.AWS_USER_NAME1
  tags = {"access-project":"megadados",
          "access-team": "desenvolvedor"  
  }
}

resource "aws_iam_user" "user_createPink" {
  name = var.AWS_USER_NAME2
  tags = {"access-project":"machine",
          "access-team": "marketing"  
  }
}

resource "aws_iam_user" "user_createPurple" {
  name = var.AWS_USER_NAME3
  tags = {"access-project":"inteligencia",
          "access-team": "marketing"  
  }
}
resource "aws_iam_user" "user_createGreen" {
  name = var.AWS_USER_NAME4
  tags = {"access-project":"redes",
          "access-team": "desenvolvedor"  
  }
}



