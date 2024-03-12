// ignore_for_file: use_build_context_synchronously

import 'package:ecomerance/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../database/db.dart';
import '../models/item_details_model.dart';

class ViewDetailsProduct extends StatefulWidget {
  ViewDetailsProduct(
      {super.key, required this.product, required this.indexValue});
  Item_Details_Module product;
  int indexValue;

  @override
  State<ViewDetailsProduct> createState() => _ViewDetailsProductState();
}

class _ViewDetailsProductState extends State<ViewDetailsProduct> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myColor1,
        appBar: AppBar(backgroundColor: myColor2),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).width * 0.9 * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(circularFixed),
                      image: DecorationImage(
                        image: AssetImage(widget.product.pathImage.trim()),
                      )),
                ),
                const SizedBox(height: 15),
                Text(
                  widget.product.name,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                Text(
                  '${widget.product.price} IQD',
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
                const Text(
                  'وصف المنتج:',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
                for (int i = 0; i < widget.product.description.length; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 5,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '   ${widget.product.description[i]}',
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    child: const Divider(
                      color: Color.fromARGB(255, 199, 199, 199),
                      thickness: 2,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'مكونات المنتج:',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
                for (int i = 0; i < widget.product.components.length; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 5,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '   ${widget.product.components[i]}',
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 120)
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 70),
                decoration: BoxDecoration(
                    color: myColor2,
                    borderRadius: BorderRadius.circular(circularFixed)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const SizedBox(width: 15),
                  const Text('الكمية',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start),
                  const Spacer(),
                  const SizedBox(width: 15),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      splashColor: Colors.white,
                      onTap: () {
                        quantity++;
                        setState(() {});
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: const Icon(CupertinoIcons.add_circled,
                            size: 30, color: Colors.red),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(quantity.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20))),
                  const SizedBox(width: 15),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      splashColor: Colors.white,
                      onTap: () {
                        if (quantity > 1) {
                          quantity--;
                          setState(() {});
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: const Icon(CupertinoIcons.minus_circle,
                            size: 30, color: Colors.red),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                ]),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 3,
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7))),
                onPressed: () async {
                  Map<String, dynamic> newProduct = {
                    'id_product': widget.indexValue,
                    'quantity': quantity,
                    'price': quantity * widget.product.price,
                  };

                  int productId =
                      await DatabaseHelper().insertProduct(newProduct);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('تمت أضافة المنتج'),
                    backgroundColor: Colors.green,
                  ));
                  print('تم إضافة المنتج برقم: $productId');
                },
                child: Text(
                    'أضف إلى السلة (${quantity * widget.product.price} IQD)',
                    style: const TextStyle(fontSize: 17, color: Colors.white)),
              ),
            ],
          ),
        ));
  }
}
