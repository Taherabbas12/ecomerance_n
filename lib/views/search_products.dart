import 'package:ecomerance/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item_details_model.dart';
import 'view_details_product.dart';

class SearchProducts extends StatefulWidget {
  SearchProducts({super.key});

  @override
  State<SearchProducts> createState() => _SearchProductsState();
}

class _SearchProductsState extends State<SearchProducts> {
  List<Item_Details_Module> items = [];
  TextEditingController searchNameProduct = TextEditingController();

  @override
  Widget build(BuildContext context) {
    items = item_Details_values
        .where((element) => element.name.contains(searchNameProduct.text))
        .toList();
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              height: 50,
              child: CupertinoSearchTextField(
                controller: searchNameProduct,
                onChanged: (v) {
                  setState(() {});
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
              child: SingleChildScrollView(child: scrollViertical(context)))
        ],
      ),
    );
  }

  Widget scrollViertical(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        for (int i = 0; i < items.length; i++)
          // itemCount: items.length,
          // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          // itemBuilder: (context, index) =>
          InkWell(
            borderRadius: BorderRadius.circular(circularFixed),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewDetailsProduct(
                      product: items[i],
                      indexValue: i,
                    ),
                  ));
            },
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.45,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.45,
                      height: MediaQuery.sizeOf(context).width * 0.43,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(circularFixed),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(items[i].pathImage.trim()),
                          )),
                    ),
                    Text(
                      items[i].name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'IQD ${items[i].price}',
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.end,
                    ),
                  ]),
            ),
          )
      ],
    );
  }
}
