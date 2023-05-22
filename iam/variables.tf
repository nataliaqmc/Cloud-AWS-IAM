# ACCESS KEY:
variable "AWS_ACCESS_KEY_ID" {
  type      = string
  sensitive = true
}

# SECRET KEY:
variable "AWS_SECRET_ACCESS_KEY" {
  type      = string
  sensitive = true
}

# ACCOUNT ID:
variable "AWS_ACCOUNT_ID" {
  type = string
  sensitive = true
}

# USERS:
variable "AWS_USER_NAME1" {
  type = string
  sensitive = false
}
variable "AWS_USER_NAME2" {
  type = string
  sensitive = false
}
variable "AWS_USER_NAME3" {
  type = string
  sensitive = false
}
variable "AWS_USER_NAME4" {
  type = string
  sensitive = false
}

# TEAMS:
variable "AWS_TEAM_1" {
  type = string
  sensitive = false
}
variable "AWS_TEAM_2" {
  type = string
  sensitive = false
}


# PROJECT:
variable "AWS_PROJECT_1" {
  type = string
  sensitive = false
}
variable "AWS_PROJECT_2" {
  type = string
  sensitive = false
}
variable "AWS_PROJECT_3" {
  type = string
  sensitive = false
}
variable "AWS_PROJECT_4" {
  type = string
  sensitive = false
}
