provider "aws" {
  access_key = var.ACCESS_KEY
  secret_key = var.SECRET_KEY
  region = var.AWS_REGION
}

resource "aws_key_pair" "mykey" {
  key_name = "mykeypair"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

resource "aws_instance" "example" {
    ami = var.AMIS[var.AWS_REGION]
    instance_type = "t2.micro"
    key_name = aws_key_pair.mykey.id

    provisioner "file" {
      source = "script.sh"
      destination = "/tmp/script.sh"
    }

    # user_data = file("./script.sh")

    provisioner "remote-exec" {
      inline = [
        "chmod +x /tmp/script.sh",
        "sudo sed -i -e 's/\r$//' /tmp/script.sh",  # Remove the spurious CR characters.
        "sudo /tmp/script.sh",
      ]
    }

    connection {
      host        = coalesce(self.public_ip, self.private_ip)
      type        = "ssh"
      user        = var.INSTANCE_USERNAME
      private_key = file(var.PATH_TO_PRIVATE_KEY)
    }
}

output "public_ip" {
  value = aws_instance.example.public_ip
}