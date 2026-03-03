resource "aws_route53_record" "devdomain" {
  zone_id = var.zone_id
  count = 10
 # interpolation
  name    = "${var.instances[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.test-server[count.index].private_ip]
}

# roboshop.daws88s.online -> public_ip
# As part of functions
resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  # interpolation
  name    = "roboshop.${var.domain}" # roboshop.daws88s.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.test-server[index(var.instances, "frontend")].public_ip]
}