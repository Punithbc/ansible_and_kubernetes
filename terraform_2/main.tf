resource "aws_eip" "lb" {
   vpc = true
}

output "aws_eip" {
    value=aws_eip.lb.public_ip
}

resource "aws_s3_bucket" "my_bucket" {
    bucket =  "mybucket"
}

output "s3_dns" {
    value=aws_s3_bucket.my_bucket.bucket_domain_name
}