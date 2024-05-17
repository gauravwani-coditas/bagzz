import 'package:flutter/material.dart';

Widget getShopByCategoryGridView() {
  List<String> imagePaths = [
    "images/category_images/category_image_1.png",
    "images/category_images/category_image_2.png",
    "images/category_images/category_image_3.png",
    "images/category_images/category_image_4.png",
  ];

  List<String> bagNames = [
    "Handle bags",
    "Crossbody bags",
    "Shoulder bags",
    "Tote bag",
  ];

  return SizedBox(
    height: 500,
    child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.7589,
        physics: const NeverScrollableScrollPhysics(),
        children: imagePaths
            .map(
              (imagePath) => Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(imagePath),
              ),
            )
            .toList()),
  );
}
