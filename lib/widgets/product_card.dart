import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:product_app/components/image_list.dart';
import 'package:product_app/style/app_style.dart';
import 'package:product_app/widgets/product_info.dart';

Widget productCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 4.0,
        shadowColor: AppStyle.amberColor,
        child: Container(
          height: 250.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppStyle.cardsColor[0],
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            children: [
              Image.asset(
                imageNike[0],
                width: 200.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 14.0, bottom: 10.0, left: 4.0, right: 4.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20.0),
                    Text(
                      doc["pro_name"],
                      style: AppStyle.mainTitle,
                    ),
                    const SizedBox(height: 10.0),
                    Text(doc["price"], style: AppStyle.contentTitle),
                    const SizedBox(height: 10.0),
                    productInfo("~ perfect"),
                    const SizedBox(height: 10.0),
                    productInfo("~ beautiful"),
                    const SizedBox(height: 10.0),
                    productInfo("~ wonderful"),
                    const SizedBox(height: 10.0),
                    const Text("⭐ ⭐ ⭐ ⭐"),
                    Text(
                      "19 reviews ",
                      style: TextStyle(color: AppStyle.accentColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
