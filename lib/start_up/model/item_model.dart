class ItemModel {
  final String image;
  final String name;
  final int price;
  final String date;
  final String vendor;
  final int id;

  ItemModel({
    required this.image,
    required this.name,
    required this.price,
    required this.date,
    required this.vendor,
    required this.id,
  });
}

List<ItemModel> items = [
  ItemModel(
    image: 'assets/images/gown.png',
    name: 'Slope Gown',
    price: 50,
    date: 'cdate',
    vendor: 'Olams Wears',
    id: 1,
  ),
  ItemModel(
    image: 'assets/images/item1.png',
    name: 'HeadSet',
    price: 50,
    date: 'cdate',
    vendor: 'olams Wears',
    id: 2,
  )
];
