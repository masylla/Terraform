output "public_ip" {
  value = aws_instance.instance_dev[*].public_ip
}

output "instance_details" {
  value = [
    for instance in aws_instance.instance_dev : {
      name      = instance.tags.Name
      public_ip = instance.public_ip
    }
  ]
}