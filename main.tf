resource "aws_instance" "web" {
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2 AMI
  instance_type = var.instance_type
  subnet_id = 	"subnet-0bacae628484819a4"
  user_data_base64 = "IyEvYmluL2Jhc2gKeXVtIHVwZGF0ZSAteQphbWF6b24tbGludXgtZXh0cmFzIGluc3RhbGwgbmdpbngxLjEyIC15CnN5c3RlbWN0bCBzdGFydCBuZ2lueApzeXN0ZW1jdGwgZW5hYmxlIG5naW54CnRvdWNoIC91c3Ivc2hhcmUvbmdpbngvaHRtbC9pbmRleC5odG1sCmNobW9kIDc3NyAvdXNyL3NoYXJlL25naW54L2h0bWwvaW5kZXguaHRtbAplY2hvICc8aHRtbD48aGVhZD48dGl0bGU+SGVsbG8gV29ybGQ8L3RpdGxlPjwvaGVhZD48Ym9keT48aDE+SGVsbG8gV29ybGQhPC9oMT48L2JvZHk+PC9odG1sPicgPiAvdXNyL3NoYXJlL25naW54L2h0bWwvaW5kZXguaHRtbAo="

  key_name = "web_key_pair"

  tags = {
    Name = "web"
  }

}

resource "aws_key_pair" "web_key_pair" {
    key_name = "web_key_pair"
    public_key = var.ssh_key
  }