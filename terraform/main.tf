provider "aws" {
region= "us-east-1"
}

resource "aws_vpc" "myvpc"{
cidr_block= var.cidr
}

resource "aws_subnet" "sub1" {
vpc_id = aws_vpc.myvpc_id
availabilty_zone= "us_east-1a"
cidr_block = "10.0.0.0/24"
map_public_ip_on_launch="true"
}

resource "aws_subnet" "sub2" {
vpc_id = aws_vpc.myvpc_id
availabilty_zone= "us_east-1b"
cidr_block = "10.0.0.0/24"
map_public_ip_on_launch="true"
}

resource "aws_internet_gateway" "mygt" {
vpc_id=aws_vpc.myvpc_id
}

resource "aws_route_table" "rt" {
vpc_id = aws_vpc.myvpc_id

route {

cidr_block= "0.0.0.0"
gateway_id = aws_internet_gateway.mygt.id


}

resouce "aws_route_table_association" "RA1"
{
subnet_id = aws_subnet.sub1.id
route_table_id = aws_route_table.rt.id

}

resouce "aws_route_table_association" "RA2"
{
subnet_id = aws_subnet.sub2.id
route_table_id = aws_route_table.rt.id
}




resouce "aws_security_group" {

name="mysg"
vpc-id = aws_vpc.myvpc.id
ingress {
to_port=22
from_port=22
description="ssh"
cidr_block=["0.0.0.0/0"]
protocol=tcp

}
egress {

to_port=0
from_port=0
protocol=-1
cidr_block=["0.0.0.0/0"]

}


resouce "aws_instance" "web1" {
ami = ami_sadjf23rj3orj
instance_type = t2.micro
subnet_id=aws_subnet.sub1.id
vpc_security_group_ids=
user_data=
}