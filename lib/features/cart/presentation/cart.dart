import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> bagNames = ["Artsy", "Monogram"];
List<String> bagFeatures = ["Wallet with chain", "Wallet with chain"];
List<String> bagImagePaths = ["images/bags/bag1.png", "images/bags/bag4.png"];
List<String> bagPrices = ["\$564","\$1638"];

Widget getMyCartBottomSheet() {
  return Padding(
      padding: const EdgeInsets.all(22),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView.builder(
              itemCount: bagNames.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return getCartBags(
                    bagImagePaths[index], bagNames[index], bagFeatures[index],bagPrices[index]);
              },
            ),
            const SizedBox(height:30,),
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
                    
                      child:  Text("PROCEED TO BUY",style: GoogleFonts.workSans(fontSize: 16),),),
          ],
        ),
      ));
}

Widget getCartBags(String imagePath, String bagName, String bagFeature,String bagPrice) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //bag and count
          Column(
            children: [
              Image.asset(
                imagePath,
                width: 150,
                height: 170,
              ),
              Row(
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        minimumSize: MaterialStateProperty.all<Size>(const Size(25.48, 25.48)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            
                          ),
                        ),
                      ),
                      child: const Text("-",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),),
      
                  OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        minimumSize: MaterialStateProperty.all<Size>(const Size(25.48, 25.48)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                      child: const Text("1",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),),
      
                      OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        minimumSize: MaterialStateProperty.all<Size>(const Size(25.48, 25.48)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                      child: const Text("+",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),),
                ],
              )
            ],
          ),
          const SizedBox(width: 29,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               //const SizedBox(height: 13,),
                Text(
                  bagName,
                  style: GoogleFonts.playfairDisplay(
                      fontWeight: FontWeight.w700, fontSize: 18),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  bagFeature,
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                Text("Style #36252 0YK0G 1000",
                    style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color:Color.fromRGBO(132, 132,132, 1),
                    )),
                const SizedBox(
                  height: 9,
                ),
                Text(bagPrice,style:  GoogleFonts.workSans(fontWeight: FontWeight.w700,fontSize: 18),),
                
              ],
            ),
          ),
        ],
      ),
      Container(height: 1,color: Colors.black,),
    ],
  );
}
