resource "aws_iam_user" "user_two2" {
    count = length(var.username)
    name = var.username[count.index]
    path = "/system/"    
}

