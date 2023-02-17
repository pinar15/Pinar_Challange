resource "aws_instance" "web" {
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2 AMI
  instance_type = var.instance_type

  user_data_base64 = "IyEvYmluL2Jhc2gKc3VkbyB5dW0gdXBkYXRlIC15CnN1ZG8geWVtIGluc3RhbGwgLXkgaHR0cGQKc3VkbyB5b3VibG9nIHN0YXJ0IGh0dHBkCnN1ZG8gc3lzdGVtYXAgZW5hYmxlIGh0dHBkCnN1ZG8gdG91Y2ggIC92YXIvd3d3L2h0bWwvaW5kZXguaHRtbA=="
  tags = {
    Name = "web"
  }
}