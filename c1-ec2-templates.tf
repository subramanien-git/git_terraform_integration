/*  resource "aws_launch_template" "ec2_instance" {
  name_prefix   = "Subbu-web-launch-template"
  image_id      = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type["dev"]

  key_name               = "Subbu"
  vpc_security_group_ids = [aws_security_group.web_sg.id]
 user_data = base64encode(<<EOF
#!/bin/bash
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "Hello from Auto Scaling" > /var/www/html/index.html
EOF
)
} */

resource "aws_launch_template" "ec2_instance" {
  name_prefix   = "subbu-web-launch-template"
  image_id      = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type["dev"]
  update_default_version = true #we are upding the default version

  key_name               = "Subbu"
  vpc_security_group_ids = [aws_security_group.web_sg.id]
 user_data = base64encode(<<EOF
#!/bin/bash
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "Hello from Auto Scaling $HOSTNAME" > /var/www/html/index.html
EOF
)
}