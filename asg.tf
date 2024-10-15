resource "aws_launch_configuration" "app_launch_config" {
  name          = "app-launch-config"
  image_id      = "ami-0c55b159cbfafe1f0"
  instance_type = "t3a.micro"
  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "Hello, World!" > /var/www/html/index.html
  EOF
}

resource "aws_autoscaling_group" "app_asg" {
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1
  vpc_zone_identifier  = [aws_subnet.public.id]
  launch_configuration = aws_launch_configuration.app_launch_config.id
  target_group_arns    = [aws_lb_target_group.app_tg.arn]

  tags = [{
    key                 = "Name"
    value               = "ASGInstance"
    propagate_at_launch = true
  }]
}
