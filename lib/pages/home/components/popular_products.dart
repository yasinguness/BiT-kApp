import 'dart:ui';

import 'package:bitik_mobile_app/common_widgets/product_card.dart';
import 'package:bitik_mobile_app/common_widgets/progress_indicator.dart';
import 'package:bitik_mobile_app/models/product.dart';
import 'package:bitik_mobile_app/pages/home/components/section_title.dart';
import 'package:bitik_mobile_app/repositories/product_repository.dart';
import 'package:bitik_mobile_app/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PopularProducts extends StatefulWidget {
  PopularProducts({Key? key}) : super(key: key);

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  ProductRepository prod = ProductRepository();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var firestore = FirebaseFirestore.instance;
    CollectionReference productRef = firestore.collection("products");
    // CollectionReference products =
    //     FirebaseFirestore.instance.collection('products');
    // QuerySnapshot querySnapshot = await products.get();
    SizeConfig().init(context);
    // prod.Create();
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popüler Ürünler",
                  style: TextStyle(
                      fontSize: 20, color: Colors.white.withOpacity(0.8)),
                ),
                Text(
                  "Daha Fazla",
                  style: TextStyle(
                      fontSize: 13, color: Colors.white.withOpacity(0.6)),
                )
              ],
            )),
        SizedBox(
          height: getProportionateScreenHeight(230),
          width: getProportionateScreenWidth(350),
          child: StreamBuilder<QuerySnapshot>(
              //Neyi dinlediğimiz bilgisi
              stream: productRef.snapshots(),
              //Streamden her yeni veri aktığında aşağıdaki metodu çalıştırır.
              builder: (context, asyncSnapshot) {
                if (!asyncSnapshot.hasData) {
                  WidgetsBinding.instance!.addPostFrameCallback((_) {
                    showGeneralDialog(
                        context: context,
                        barrierDismissible: false,
                        barrierLabel: MaterialLocalizations.of(context)
                            .modalBarrierDismissLabel,
                        barrierColor: Colors.black45,
                        transitionDuration: const Duration(milliseconds: 200),
                        pageBuilder: (BuildContext buildContext,
                            Animation animation, Animation secondaryAnimation) {
                          return Center(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height,
                                padding: EdgeInsets.all(20),
                                color: Colors.transparent,
                                child:
                                    Center(child: CircularProgressIndicator())),
                          );
                        });
                  });
                }
                if (asyncSnapshot.data != null) {
                  WidgetsBinding.instance!.addPostFrameCallback((_) {
                    Navigator.of(context).pop();
                  });
                  List<DocumentSnapshot>? listOfDocuments =
                      asyncSnapshot.data!.docs;
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: listOfDocuments.length,
                    itemBuilder: (context, index) {
                      if (listOfDocuments[index]["isPopular"].toString() ==
                          "true") {
                        return ProductCard(
                            productId: listOfDocuments[index].id,
                            product: Product(
                                colors: listOfDocuments[index]["colors"],
                                description: listOfDocuments[index]
                                    ["description"],
                                images: listOfDocuments[index]["images"],
                                price: listOfDocuments[index]["price"],
                                title: listOfDocuments[index]["title"],
                                isPopular: listOfDocuments[index]["isPopular"],
                                isSoon: listOfDocuments[index]["isSoon"],
                                rating: listOfDocuments[index]["rating"]));
                      }
                      return SizedBox
                          .shrink(); // here by default width and height is 0
                    },
                  );
                } else {
                  return Container();
                }
                ;
                // if (!asyncSnapshot.hasData) {
                // showDialog(
                //     barrierDismissible: false,
                //     context: context,
                //     builder: (context) {
                //       return SizedBox(
                //         height: SizeConfig.screenHeight,
                //         width: SizeConfig.screenWidth,
                //         child: AlertDialog(
                //           insetPadding: EdgeInsets.all(0),
                //           backgroundColor: Colors.transparent,
                //           title: new Text("Veriler yükleniyor..."),
                //           content:
                //               Center(child: CircularProgressIndicator()),
                //         ),
                //       );
                //     });
                // showGeneralDialog(
                //   barrierDismissible: false,
                //     context: context,
                //     builder: (context) {
                //       return Dialog(
                //           backgroundColor: Colors.black12,
                //           insetPadding: EdgeInsets.all(10),
                //           child: Stack(
                //             alignment: Alignment.center,
                //             children: <Widget>[
                //               Container(
                //                   width: double.infinity,
                //                   height: 200,
                //                   decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(15),
                //                   ),
                //                   padding:
                //                       EdgeInsets.fromLTRB(20, 50, 20, 20),
                //                   child: Center(
                //                       child: CircularProgressIndicator())),
                //             ],
                //           ));
                //     });

                // }
              }),
        ),
      ],
    );
  }
}
// }listOfDocuments[index]['title']
