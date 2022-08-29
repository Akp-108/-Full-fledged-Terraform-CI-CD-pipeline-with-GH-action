
resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"
  users = [for i in aws_iam_user.user_two2 : i.name]
  group = aws_iam_group.group.name  
}


resource "aws_iam_group" "group" {
     name = var.user_group
    path = "/users/"
}

