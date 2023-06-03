import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:product_app/components/image_list.dart';
import 'package:product_app/style/app_style.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail(this.docs, {super.key});
  QueryDocumentSnapshot<Object?> docs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.detailColorF,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(docs["pro_name"], style: AppStyle.mainTitle),
        actions: const [
          Icon(Icons.shopping_basket_outlined),
          SizedBox(width: 15.0),
        ],
      ),
      body: Container(
        color: AppStyle.detailColorF,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                imageNike[0],
                height: 280.0,
                width: 300.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              height: 260.0,
              width: 300.0,
              padding: const EdgeInsets.all(10.0),
              color: AppStyle.cardsColor[0],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        docs["pro_name"],
                        style: AppStyle.mainTitle,
                      ),
                      Text(
                        docs["price"],
                        style: AppStyle.contentTitle,
                      ),
                    ],
                  ),
                  Text(
                    docs["pro_about"],
                    style: AppStyle.dateTitle,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200.0, 50.0),
                      backgroundColor: AppStyle.buttomColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      "ADD TO CART",
                      style: TextStyle(
                        color: AppStyle.cardsColor[0],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
