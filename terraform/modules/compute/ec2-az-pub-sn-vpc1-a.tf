data "template_file" "nagios" {
  template = file("./modules/compute/scripts/nagios-core.sh")
}

data "template_file" "node_a_agents" {
  template = file("./modules/compute/scripts/nagios-agent.sh")
}

resource "aws_instance" "nagios" {
  ami                    = "ami-0a1179631ec8933d7"
  instance_type          = "t2.micro"
  subnet_id              =  var.subnet_pb_id10
  vpc_security_group_ids = [aws_security_group.sg_vpc10_public.id]
  key_name               = "vockey"
  user_data              = base64encode(data.template_file.nagios.rendered)
  tags = {
    Name = "nagios-core"
  }
}

resource "aws_instance" "node_a" {
  ami                    = "ami-0a1179631ec8933d7"
  instance_type          = "t2.micro"
  subnet_id              =  var.subnet_pb_id10
  vpc_security_group_ids = [aws_security_group.sg_vpc10_public.id]
  key_name               = "vockey"
  user_data              = base64encode(data.template_file.node_a_agents.rendered)
  tags = {
    Name = "node-a"
  }
}