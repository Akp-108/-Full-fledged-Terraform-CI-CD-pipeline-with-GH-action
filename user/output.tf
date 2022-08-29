output "user_names" {
    value = aws_iam_group_membership.team.*.users
}

output "gp-names" {
  value = aws_iam_group_membership.team.*.group
}