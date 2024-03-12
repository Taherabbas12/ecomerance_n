import 'dart:math';

import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../database/db.dart';
import '../models/item_details_model.dart';

class ViewBasket extends StatefulWidget {
  ViewBasket({super.key});

  @override
  State<ViewBasket> createState() => _ViewBasketState();
}

class _ViewBasketState extends State<ViewBasket> {
  double totalPriceAllProducts = 0;
  bool isDeleted = false; // تتبع ما إذا تمت عملية الحذف بنجاح
  bool isUpdateUI = false;
  @override
  Widget build(BuildContext context) {
    totalPriceAllProducts = 0;

    return Container(
      margin: const EdgeInsets.only(top: 50),
      width: double.infinity,
      height: double.infinity,
      child: FutureBuilder(
        future: DatabaseHelper().getAllProducts(),
        builder: (context, snapshot) {
          totalPriceAllProducts = 0;
          if (snapshot.hasData) {
            print(snapshot.data);
            if (snapshot.data!.isNotEmpty) {
              return Stack(
                children: [
                  ListView.builder(
                    itemBuilder: (context, index) {
                      Map d = snapshot.data![index];
                      Item_Details_Module item =
                          item_Details_values[int.parse(d['id_product'])];
                      totalPriceAllProducts += d['price'] * d['quantity'];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3.0, horizontal: 10),
                        child: Dismissible(
                          key: Key(d['id'].toString()),
                          onDismissed: (direction) async {
                            await DatabaseHelper().deleteProduct(d['id']);
                            setState(() {
                              isDeleted =
                                  true; // تعيين قيمة isDeleted بعد حذف العنصر
                            });
                          },
                          background: Container(
                            color: Colors.red,
                            alignment: Alignment.centerRight,
                            child:
                                const Icon(Icons.delete, color: Colors.white),
                          ),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(circularFixed)),
                            tileColor: const Color.fromARGB(255, 51, 51, 51),
                            title: Text(
                              item.name,
                              maxLines: 1,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('الكمية \n ${d['quantity']}',
                                      textAlign: TextAlign.center),
                                  Text('السعر \n ${d['price']}',
                                      textAlign: TextAlign.center),
                                  Text(
                                      'المجموع \n ${d['price'] * d['quantity']}',
                                      textAlign: TextAlign.center),
                                ]),
                            trailing: Container(
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        item.pathImage.trim(),
                                      ))),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: snapshot.data!.length,
                  ),
                  if (isDeleted) // إزالة Dismissible بعد حدوث الحذف
                    const SizedBox.shrink(),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 27, vertical: 13),
                      child: InkWell(
                        onTap: () {
                          //
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                title: const Text(
                                    'هل فعلا تريد شراء هذه المنتجات'),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () async {
                                        //

                                        await DatabaseHelper()
                                            .deleteAllProducst();
                                        setState(() {
                                          isUpdateUI = false;
                                          isDeleted =
                                              true; // تعيين قيمة isDeleted بعد حذف العنصر
                                        });

                                        Navigator.pop(context);
                                      },
                                      child: const Text('نعم')),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('لا')),
                                ]),
                          );
                        },
                        borderRadius: BorderRadius.circular(circularFixed),
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 3),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 243, 71, 71),
                              borderRadius:
                                  BorderRadius.circular(circularFixed)),
                          height: 50,
                          child: StreamBuilder(
                              stream: Stream.periodic(
                                  const Duration(milliseconds: 200),
                                  (computationCount) {
                                if (!isUpdateUI) {
                                  isUpdateUI = true;
                                  totalPriceAllProducts = 0;
                                  setState(() {});
                                }
                              }),
                              builder: (context, snapshot) {
                                return Text('المجموع : $totalPriceAllProducts',
                                    style: const TextStyle(fontSize: 20));
                              }),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return const Center(
                  child: Text('لم يتم أضافة عناصر للسلة',
                      style: TextStyle(fontSize: 24)));
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
