import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'homeBody.dart';
import 'search_products.dart';
import 'view_products_by_filter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> bodys = [
    HomeBody(),
    SearchProducts(),
    HomeBody(),
    HomeBody(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor1,
      //
      body: bodys[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          index = i;
          setState(() {});
        },
        elevation: 5,
        backgroundColor: myColor2,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'بحث'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout), label: 'السلة'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'حسابي')
        ],
      ),
    );
  }
}
