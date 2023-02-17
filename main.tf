resource "aws_instance" "web" {
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2 AMI
  instance_type = var.instance_type
  subnet_id = 	"subnet-0bacae628484819a4"
  user_data_base64 = base64encode(
    "#!/bin/bash\n" 
    "sudo yum update -y\n"
    "sudo amazon-linux-extras install nginx1.12 -y\n"
    "sudo systemctl start nginx\n"
    "sudo systemctl enable nginx\n"
    "sudo touch /usr/share/nginx/html/index.html\n"
    "sudo chmod 777 /usr/share/nginx/html/index.html\n"
    "sudo echo '<html><head><title>Hello World</title></head><body><h1>Hello World!</h1></body></html>' > /usr/share/nginx/html/index.html\n"
  )
  key_name = "web_key_pair"

  tags = {
    Name = "web"
  }

}

resource "aws_key_pair" "web_key_pair" {
    key_name = "web_key_pair"
    public_key = var.ssh_key
  }