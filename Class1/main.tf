resource "aws_iam_user" "lb" {
  name = "loadbalancer"
}

resource "aws_iam_user" "lb2" {
  name = "loadbalancer2"
}

resource "aws_iam_user" "lb3" {
  name = "loadbalancer3"
}

resource "aws_iam_group" "hello" {
  name = "devops"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb.name,
    aws_iam_user.lb2.name,
    aws_iam_user.lb3.name
  ]

  group = aws_iam_group.hello.name
}
