import 'package:ecomerance/app_colors.dart';
import 'package:flutter/material.dart';

import '../models/item_details_model.dart';
import '../models/shop_by_module.dart';
import 'view_details_product.dart';

class ViewProductsByFilter extends StatefulWidget {
  ViewProductsByFilter({super.key, required this.filter});
  Shop_By_Module filter;

  @override
  State<ViewProductsByFilter> createState() => _ViewProductsByFilterState();
}

class _ViewProductsByFilterState extends State<ViewProductsByFilter> {
  List<Item_Details_Module> items = [];

  @override
  Widget build(BuildContext context) {
    items = item_Details_values
        .where((element) => element.shopByType == widget.filter.name)
        .toList();
    return Scaffold(
      backgroundColor: myColor1,
      appBar: AppBar(
          title: Text(widget.filter.name),
          centerTitle: true,
          backgroundColor: myColor2),
      body: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            child: ListView.builder(
              itemCount: shop_By_values.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: () {
                    widget.filter = shop_By_values[index];
                    setState(() {});
                  },
                  borderRadius: BorderRadius.circular(circularFixed),
                  child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: widget.filter == shop_By_values[index]
                                  ? Colors.transparent
                                  : const Color.fromARGB(255, 182, 182, 182),
                              width: 1),
                          color: widget.filter == shop_By_values[index]
                              ? Colors.red
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(circularFixed)),
                      child: Text(shop_By_values[index].name)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(child: SingleChildScrollView(child: scrollViertical()))
        ],
      ),
    );
  }

  Widget scrollViertical() {
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
