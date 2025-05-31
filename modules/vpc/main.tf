resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "main" {
  count = var.aws_subnet_count

  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(aws_vpc.main.cidr_block, 4, count.index + 3)


  tags = {
    Name = "subnet-${count.index + 1}"
  }
}


resource "aws_route_table" "public_routetable" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = aws_vpc.main.cidr_block
    gateway_id = aws_internet_gateway.example.id
  }

  tags = {
    Name = "example"
  }
}


resource "azurerm_resource_group" "example" {
  name     = var.localNetworkGW
  location = "West Europe"
}

resource "azurerm_local_network_gateway" "home" {
  name                = var.backHome
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  gateway_address     = var.gateway_address
  address_space       = [var.address_space]
}

