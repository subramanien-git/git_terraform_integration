/*#we need to also modify the output ec2-output.tf check the line number 28 values and in squre branccket i put *
  output "instance_public_ip" {
  value = values(aws_instance.ec2_instance)[*].public_ip
}*/