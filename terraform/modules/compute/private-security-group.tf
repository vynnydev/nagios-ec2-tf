resource "aws_security_group" "sg_vpc10_private" {
  name        = "sg_vpc10_private"
  description = "sg_vpc_pvt_10"
  vpc_id      = var.vpc10_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/16"]
   }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["20.0.0.0/16"]
  }
  tags = {
    Name = "sg_vpc10_private"
  }
}

resource "aws_security_group" "sg_vpc20_private" {
  name        = "sg_vpc20_private"
  description = "sg_vpc_pvt_20"
  vpc_id      = var.vpc20_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["20.0.0.0/16"]
   }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/16"]
  }
  
  tags = {
    Name = "sg_vpc20_private"
  }
}