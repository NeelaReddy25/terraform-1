resource "aws_instance" "expense" {
  for_each = var.instance_names #each.key and each.value
  ami = data.aws_ami.ami_info.id
  vpc_security_group_ids = ["sg-039a1e225ec0846a9"] #replace with your SG ID
  instance_type = each.value
  tags = merge(
    var.common_tags,
    {
        Name = each.key
        Module = each.key
    }
  )
}