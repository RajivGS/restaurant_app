import 'package:flutter/material.dart';
import 'package:restaurant_app/views/map.dart';
import 'package:restaurant_app/views/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageView(
        children: [
          Container(child: MenuScreen()),
          Container(
            color: Colors.red,
            child: MapScreen(),
          ),
        ],
      ),
    );
  }
}
