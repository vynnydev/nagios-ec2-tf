data "template_file" "node_c_agents" {
  template = file("./modules/compute/scripts/nagios-agent.sh")
}

data "template_file" "node_d_agents" {
  template = file("./modules/compute/scripts/nagios-agent.sh")
}

resource "aws_instance" "node_c" {
  ami                    = "ami-0a1179631ec8933d7"
  instance_type          = "t2.micro"
  subnet_id              =  var.subnet_pvt_id10
  vpc_security_group_ids = [aws_security_group.sg_vpc10_private.id]
  key_name               = "vockey"
  user_data              = base64encode(data.template_file.node_c_agents.rendered)
  tags = {
    Name = "node-c"
  }
}

resource "aws_instance" "node_d" {
  ami                    = "ami-0a1179631ec8933d7"
  instance_type          = "t2.micro"
  subnet_id              =  var.subnet_pvt_id10
  vpc_security_group_ids = [aws_security_group.sg_vpc10_private.id]
  key_name               = "vockey"
  user_data              = base64encode(data.template_file.node_d_agents.rendered)
  tags = {
    Name = "node-d"
  }
}