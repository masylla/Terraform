resource "aws_iam_user" "C1_user" {
  name  = "user-${count.index}"
  count = 2
  tags = {
    Name         = "user-${count.index}"
    time_created = timestamp()
    department   = "C1"
  }

}