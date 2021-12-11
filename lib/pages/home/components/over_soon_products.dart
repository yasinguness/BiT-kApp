import 'package:bitik_mobile_app/common_widgets/product_card.dart';
import 'package:bitik_mobile_app/models/product.dart';
import 'package:bitik_mobile_app/pages/home/components/section_title.dart';
import 'package:bitik_mobile_app/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class WillBeOverSoon extends StatefulWidget {
  const WillBeOverSoon({Key? key}) : super(key: key);

  @override
  State<WillBeOverSoon> createState() => _WillBeOverSoonState();
}

class _WillBeOverSoonState extends State<WillBeOverSoon> {
  @override
  Widget build(BuildContext context) {
    var firestore = FirebaseFirestore.instance;
    CollectionReference productRef = firestore.collection("products");
    // CollectionReference products =
    //     FirebaseFirestore.instance.collection('products');
    // QuerySnapshot querySnapshot = await products.get();
    SizeConfig().init(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SectionTitle(title: "Yakında Bitecek", press: () {}),
        ),
        SizedBox(
          height: 250,
          width: 450,
          child: StreamBuilder<QuerySnapshot>(
              //Neyi dinlediğimiz bilgisi
              stream: productRef.snapshots(),
              //Streamden her yeni veri aktığında aşağıdaki metodu çalıştırır.
              builder: (context, asyncSnapshot) {
                if (asyncSnapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                if (asyncSnapshot.data != null) {
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
              }),
        ),
      ],
    );
  }
}
