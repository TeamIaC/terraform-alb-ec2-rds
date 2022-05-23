resource "aws_key_pair" "key_pair" {
      key_name = "example"
      # 現時点ではユーザー側でキーペア生成しなければならない
      # ssh-keygen -t rsa -f example -N ''
      # ssh -i ./example ec2-user@35.77.206.159
      public_key = file("./example.pub")
}