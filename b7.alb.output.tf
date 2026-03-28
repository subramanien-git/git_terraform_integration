##lets create another file so that we can displaye the alb dns name a7.alb-output.tf
output "alb_dns" {
  value = aws_alb.app_lb.dns_name
}