resource "aws_vpc_peering_connection" "peering" {
  count = var.is_peering_required ? 1 : 0
  # peer_owner_id = "${var.peer_owner_id}"
  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = var.requestor_vpc_id
  auto_accept   = true

  tags = {
    Name = "VPC Peering between default and ${var.project_name}"
  }
}

resource "aws_route" "default_peering" {
  count = var.is_peering_required ? 1 : 0
  route_table_id            = var.default_route_table_id
  destination_cidr_block    = var.cidr_block
  # since we set count parameter, it is treated as list, even for single element you should write list syntax
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[0].id
  #depends_on                = [aws_route_table.testing]
}

resource "aws_route" "public_peering" {
  count = var.is_peering_required ? 1 : 0
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = var.default_cidr_block
  # since we set count parameter, it is treated as list, even for single element you should write list syntax
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[0].id
  #depends_on                = [aws_route_table.testing]
}

resource "aws_route" "private_peering" {
  count = var.is_peering_required ? 1 : 0
  route_table_id            = aws_route_table.private.id
  destination_cidr_block    = var.default_cidr_block
  # since we set count parameter, it is treated as list, even for single element you should write list syntax
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[0].id
  #depends_on                = [aws_route_table.testing]
}

resource "aws_route" "database_peering" {
  count = var.is_peering_required ? 1 : 0
  route_table_id            = aws_route_table.database.id
  destination_cidr_block    = var.default_cidr_block
  # since we set count parameter, it is treated as list, even for single element you should write list syntax
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[0].id
  #depends_on                = [aws_route_table.testing]
}
