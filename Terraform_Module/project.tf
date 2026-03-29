module "project" {
  #this module required a source 
  source = "github.com/subramanien-git/git_terraform_integration" #modify this github with your own github remove https and remove .git from the end
region = "us-east-1"
vpc_cidr = "172.0.0.0/16"
azs = ["us-east-1a", "us-east-1b"]
subnet_cidrs = ["172.0.1.0/24", "172.0.2.0/24"]
allowed_ingress_ports = [80]
allowed_alb_ingress_ports = [80]
allowed_alb_cidr_blocks = ["0.0.0.0/0"]
}