import 'package:flutter/material.dart';
import 'package:restaurant_app/model/FoodnPlaceGridImage/image_data.dart';
import 'package:restaurant_app/widgets/app_text.dart';

class StandardGridImageForFood extends StatelessWidget {
  const StandardGridImageForFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const AppText(text: 'THE TASTE OF YOUR DESIRE', size: 25),
        const SizedBox(height: 50),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          width: MediaQuery.of(context).size.width,
          height: 350,
          child: GridView.builder(
            itemCount: foodList.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
            ),
            itemBuilder: (context, index) => ImageCard(
              imageData: foodList[index],
              name: foodList[index],
            ),
          ),
        ),
        const SizedBox(height: 20),
        const AppText(text: 'YOUR FAVOURITE RESTAURANT IN YOUR CITY', size: 18),
        const SizedBox(height: 25),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          width: MediaQuery.of(context).size.width,
          height: 350,
          child: GridView.builder(
            itemCount: placeList.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
            ),
            itemBuilder: (context, index) => ImageCard(
              imageData: placeList[index],
              name: placeList[index],
            ),
          ),
        ),
      ],
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({Key? key, required this.imageData, required this.name})
      : super(key: key);
  final ImageData name;
  final ImageData imageData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            imageData.imageUrl,
            //  fit: BoxFit.contain,
            height: 140,
            width: 200,
          ),
        ),
        Text(imageData.name),
      ],
    );
  }
}
