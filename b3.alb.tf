  #create a file a3.alb.tf copy line 3 till 11 . need to change my name to your name in line 4 and line 10
  resource "aws_alb" "app_lb" {
  name = "subbu-alb"
  load_balancer_type = "application"
  #with this lb we need to add security group and subnet
  security_groups = [aws_security_group.alb_sg.id] #this is the security
  subnets = values(aws_subnet.sky_subnet)[*].id #this is the subnet
  tags = {
    Name = "subbu-alb"
  }
}