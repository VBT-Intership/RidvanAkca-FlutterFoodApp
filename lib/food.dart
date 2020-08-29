class Food {
  String title;
  String subtitle;
  String price;
  String image;
  Food({this.title, this.subtitle, this.price, this.image});
}

List<Food> foodList = [
  Food(
      title: 'Banana Goreng',
      subtitle: 'Warung buyayuk',
      price: 'Rp.2500',
      image: 'https://picsum.photos/100'),
  Food(
      title: 'Donat Cilik',
      subtitle: 'Warung buyayuk',
      price: 'Rp.12000',
      image: 'https://picsum.photos/101'),
  Food(
      title: 'Copy Anget',
      subtitle: 'Warung buyayuk',
      price: 'Rp.4500',
      image: 'https://picsum.photos/102'),
  Food(
      title: 'Banana Goreng2',
      subtitle: 'Warung buyayuk2',
      price: 'Rp.5000',
      image: 'https://picsum.photos/103'),
];
