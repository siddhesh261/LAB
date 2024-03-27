resource "aws_security_group" "webserver" {
    name = "Webserver1"
    description = "this sg is meant for all the lab servers"
    vpc_id = data.aws_vpc.default.id
  
}