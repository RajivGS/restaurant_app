import 'package:flutter/material.dart';
import 'package:restaurant_app/model/FoodnPlaceGridImage/project_image.dart';
import 'package:restaurant_app/views/map.dart';
import 'package:restaurant_app/widgets/app_text.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.yellowAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/logo/eatarian-logo-black.png', width: 150),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset.fromDirection(-1, -8.0),
                    spreadRadius: 12,
                  ),
                  BoxShadow(
                    color: Colors.yellow,
                    spreadRadius: 9.0,
                    offset: Offset.fromDirection(-9.0, -5.0),
                  )
                ]),
                child: const AppText(
                  text: 'LOGIN',
                  size: 19,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 420,
              width: MediaQuery.of(context).size.width,
              color: Colors.yellowAccent,
              child: Column(
                children: [
                  const SizedBox(height: 150),
                  const Center(
                      child: AppText(text: 'Local Restaurants.', size: 34)),
                  const Center(
                      child: AppText(
                          text: 'Delivered Directly To You.', size: 22)),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: const TextField(
                      //                  controller: controller,
                      decoration: InputDecoration(
                        icon: Icon(Icons.location_on),
                        hintText: 'Enter your Location',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const MapScreen())),
                    child: Container(
                      height: 40,
                      width: 150,
                      color: Colors.yellow,
                      child: const Center(
                        child: AppText(
                          text: 'Search',
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const StandardGridImageForFood(),
          ],
        ),
      ),
    );
  }
}
