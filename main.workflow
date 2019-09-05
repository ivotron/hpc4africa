workflow "test" {
  resolves = "run"
}

action "run" {
  uses = "actions/aws/cli@master"
  args = "ec2 describe-instances"
  secrets = ["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY"]
}
