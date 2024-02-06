import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../models/shop_by_module.dart';
import 'view_products_by_filter.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: circularFixed),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 40),
            Center(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(circularFixed),
                    color: Colors.white,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/شيا موسجر.png'))),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'تسوق حسب الفئة',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            scrollHorizontal(),
            const SizedBox(height: 20),
            const Text(
              'تسوق حسب المجموعة',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            scrollViertical(context)
          ]),
        ));
  }

  Wrap scrollViertical(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(
        shop_By_values.length,
        (index) => InkWell(
          borderRadius: BorderRadius.circular(circularFixed),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ViewProductsByFilter(filter: shop_By_values[index]),
                ));
          },
          child: Column(children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.45,
              height: MediaQuery.sizeOf(context).width * 0.45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(circularFixed),
                  image: DecorationImage(
                    image: AssetImage(shop_By_values[index].pathImage),
                  )),
            ),
            Text(
              shop_By_values[index].name,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ]),
        ),
      ),
    );
  }

  SizedBox scrollHorizontal() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: shop_By_values.length,
        itemBuilder: (context, index) => InkWell(
          borderRadius: BorderRadius.circular(circularFixed),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ViewProductsByFilter(filter: shop_By_values[index]),
                ));
          },
          child: Container(
              alignment: Alignment.center,
              width: 70,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(shop_By_values[index].pathImage),
                        )),
                  ),
                  Text(
                    shop_By_values[index].name,
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
