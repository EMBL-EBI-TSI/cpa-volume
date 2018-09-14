resource "aws_ebs_volume" "volume" {
  availability_zone = "${lookup(var.availability_zones, var.region)}"
  type              = "${var.volume_type}"
  size              = "${var.size}"

  tags = {
    Name = "${var.name}-volume"
  }
}
