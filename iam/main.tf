resource "aws_iam_role" "instance_role" {
  name = "instance_role"
  assume_role_policy = file("${path.module}/json/instance_role.json")
}

resource "aws_iam_instance_profile" "instance_profile" {
  name = "instance_profile"
  role = aws_iam_role.instance_role.name
}

resource "aws_iam_role_policy" "instance_policy" {
  name = "instance_policy"
  role = aws_iam_role.instance_role.id
  policy = file("${path.module}/json/instance_policy.json")
}
