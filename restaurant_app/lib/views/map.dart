import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const TextField(
              //                  controller: controller,
              decoration: InputDecoration(
                icon: Icon(Icons.location_on),
                hintText: ' Enter your Location',
              ),
            ),
          ),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Delivery',
              icon: Icon(Icons.delivery_dining),
            ),
            Tab(
              text: 'Pick Up',
              icon: Icon(Icons.category_rounded),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          Center(child: Text('Tab 1 Content')),
          Center(child: Text('Tab 2 Content')),
        ]),
      ),
    );
  }
}
