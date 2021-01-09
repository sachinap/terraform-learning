resource "aws_subnet" "subnet1" {
  cidr_block = cidrsubnet(aws_vpc.env-example-one.cidr_block, 3, 1)
  vpc_id = aws_vpc.env-example-one.id
  availability_zone = "us-west-2a"
}

resource "aws_subnet" "subnet2" {
  cidr_block = cidrsubnet(aws_vpc.env-example-one.cidr_block, 2, 2)
  vpc_id = aws_vpc.env-example-one.id
  availability_zone = "us-west-2b"
}