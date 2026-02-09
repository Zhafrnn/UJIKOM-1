class MenuItemModel {
  final String title;
  final String image;
  final String price;

  MenuItemModel({
    required this.title,
    required this.image,
    required this.price,
  });
}

final List<MenuItemModel> menuItems = [
  MenuItemModel(
    title: 'Chicken Burger',
    image: 'assets/images/burger.png',
    price: '\$12.00',
  ),
  MenuItemModel(
    title: 'Beef Pizza',
    image: 'assets/images/pizza.png',
    price: '\$15.00',
  ),
  MenuItemModel(
    title: 'French Fries',
    image: 'assets/images/fries.png',
    price: '\$8.00',
  ),
];
