resource "openstack_blockstorage_volume_v2" "volume" {
  name        = "${var.name}-volume"
  description = "${var.description}"
  size        = "${var.size}"
}
