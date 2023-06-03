import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_app/screens/product_detail.dart';
import 'package:product_app/style/app_style.dart';
import 'package:product_app/widgets/product_card.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: AppStyle.blackColor,
        ),
        title: Text(
          "Product List",
          style: AppStyle.mainTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
        child: Column(
          children: [
            Form(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: "  Product name...",
                  hintStyle: AppStyle.contentTitle,
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("pro_info")
                    .snapshots(includeMetadataChanges: true),
                builder: (context, AsyncSnapshot<QuerySnapshot> snap) {
                  if (snap.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snap.hasData) {
                    return ListView(
                      children: snap.data!.docs
                          .map((info) => productCard(
                              () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductDetail(info),
                                    ),
                                  ),
                              info))
                          .toList(),
                    );
                  }
                  return Text(
                    "No info",
                    style: AppStyle.mainTitle,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
