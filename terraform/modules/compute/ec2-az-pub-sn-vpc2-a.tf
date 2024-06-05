data "template_file" "node_b_agents" {
  template = file("./modules/compute/scripts/nagios-agent.sh")
}

data "template_file" "node_win_agents" {
  template = file("./modules/compute/scripts/nagios-agent.sh")
}

resource "aws_instance" "node_b" {
  ami                    = "ami-0a1179631ec8933d7"
  instance_type          = "t2.micro"
  subnet_id              =  var.subnet_pb_id20
  vpc_security_group_ids = [aws_security_group.sg_vpc20_public.id]
  key_name               = "vockey"
  user_data              = base64encode(data.template_file.node_b_agents.rendered)
  tags = {
    Name = "nagios-core"
  }
}

resource "aws_instance" "node_win" {
  ami                    = "ami-0a1179631ec8933d7"
  instance_type          = "t2.micro"
  subnet_id              =  var.subnet_pb_id20
  vpc_security_group_ids = [aws_security_group.sg_vpc20_public.id]
  key_name               = "vockey"
  user_data              = base64encode(data.template_file.node_win_agents.rendered)
  tags = {
    Name = "node-a"
  }
}