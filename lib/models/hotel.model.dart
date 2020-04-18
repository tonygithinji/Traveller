class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

List<Hotel> hotels = [
  Hotel(
    imageUrl: "assets/images/hotel-a.jpg",
    name: "Hotel A",
    address: "699 North Av.",
    price: 180,
  ),
  Hotel(
    imageUrl: "assets/images/hotel-b.jpg",
    name: "Hotel B",
    address: "8334 MapleThorpe St.",
    price: 300,
  ),
  Hotel(
    imageUrl: "assets/images/hotel-c.jpeg",
    name: "Hotel C",
    address: "234 Great St.",
    price: 580,
  ),
];
