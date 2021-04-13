resource "aws_security_group" "sg" {
  name        = var.name
  description = var.description

  ingress {
    from_port   = var.ingress_from_port
    to_port     = var.ingress_to_port
    protocol    = var.ingress_protocol
    cidr_blocks = var.ingress_cidr_block
    self = var.self
  }

  egress {
    from_port   = var.egress_from_port
    to_port     = var.egress_to_port
    protocol    = var.egress_protocol
    cidr_blocks = var.egress_cidr_block
    self = var.self
  }

  vpc_id = var.vpc_id

  tags = {
    Name = var.tag_name
  }
}
