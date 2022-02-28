class ImageData {
  final String name;
  final String imageUrl;

  const ImageData({
    required this.name,
    required this.imageUrl,
  });
}

const foodList = [
  ImageData(name: 'Pasta', imageUrl: 'assets/images/pasta.jpg'),
  ImageData(name: 'Asian', imageUrl: 'assets/images/asian.jpg'),
  ImageData(name: 'Vegetarian', imageUrl: 'assets/images/vegetarian.jpg'),
  ImageData(name: 'Chicken', imageUrl: 'assets/images/chicken.jpg'),
  ImageData(name: 'Burger', imageUrl: 'assets/images/burger.jpg'),
  ImageData(name: 'Street', imageUrl: 'assets/images/street.jpg'),
  ImageData(name: 'Indian', imageUrl: 'assets/images/indian.jpg'),
  ImageData(name: 'Pizza', imageUrl: 'assets/images/pizza.jpg'),
];

const placeList = [
  ImageData(name: 'Berlin', imageUrl: 'assets/images/berlin.jpg'),
  ImageData(name: 'Essen', imageUrl: 'assets/images/essen.jpg'),
  ImageData(name: 'Frankfurt', imageUrl: 'assets/images/frankfurt.jpg'),
  ImageData(name: 'Munich', imageUrl: 'assets/images/munich.jpg'),
  ImageData(name: 'Nurnberg', imageUrl: 'assets/images/nurnberg.jpg'),
];
