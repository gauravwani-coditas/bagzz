import 'package:bagzz/features/wishlist/presentation/widgets/favourite_bag.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> bagNames = ["Berkely", "Capucinus"];
List<String> bagFeatures = ["Wallet with chain", "Wallet with chain"];
List<String> bagImagePaths = ["images/bags/bag2.png", "images/bags/bag3.png"];


Widget getWishListBottomSheet() {
  return Padding(
      padding: const EdgeInsets.all(22),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView.builder(itemCount: bagNames.length,shrinkWrap: true, itemBuilder: (context, index) {
              return getWishListBags(bagImagePaths[index], bagNames[index], bagFeatures[index]);
            },),
            const SizedBox(height: 44,),
           OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            
                          ),
                        ),
                      ),
                      child:  Text("ADD ALL TO CART",style: GoogleFonts.workSans(fontSize: 16),),),
          ],
        ),
      ));
}
