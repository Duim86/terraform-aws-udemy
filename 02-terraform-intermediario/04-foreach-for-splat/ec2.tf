resource "aws_instance" "this" {

  for_each = {
    "web" = {
      name = "Web server"
      type = "t2.micro"
    }

    "ci_cd" = {
      name = "CI/CD server"
      type = "t2.micro"
    }
  }

  ami           = data.aws_ami.ubuntu.id
  instance_type = lookup(each.value, "type", null)

  tags = {
    Project = "Curso AWS com Terraform"
    Name    = "${each.key}: ${lookup(each.value, "name", null)}"
    Lesson  = "Foreach, For, Splat"
  }
}