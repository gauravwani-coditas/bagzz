import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getBagDescTabBarView() {
  return DefaultTabController(
      length: 3,
      child: Column(
        children: [

          TabBar(
            tabs: [
              Tab(
                child: Text("Description",
                    style: GoogleFonts.workSans(
                        fontSize: 14, fontWeight: FontWeight.w700,color:Colors.black)),
              ),
              Tab(
                child: Text(
                  "Shipping info",
                  style: GoogleFonts.workSans(
                      fontSize: 14, fontWeight: FontWeight.w700,color:Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Payment Options",
                  style: GoogleFonts.workSans(
                      fontSize: 14, fontWeight: FontWeight.w700,color:Colors.black),
                ),
              ),
            ],
            labelColor: Colors.black,
            isScrollable: true,
            indicatorColor: Colors.black,
            dividerColor: Colors.white,
            
          ),

          SizedBox(
            height: 400,
            child: TabBarView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain.",
                    style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Material and Care",
                    style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  Text(
                    "All products are made with carefully selected materials. Please handle with care for longer product life.\n- Protect from direct light, heat and rain. Should it become wet, dry it immediately with a soft cloth\n- Store in the provided flannel bag or box\n- Clean with a soft, dry cloth",
                    style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Pre-order, Made to Order and DIY items will ship on the estimated date noted on the product description page. These items will ship through Premium Express once they become available.",
                    style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Return Policy",
                    style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  Text(
                    "Returns may be made by mail or in store. The return window for online purchases is 30 days (10 days in the case of beauty items) from the date of delivery. You may return products by mail using the complimentary prepaid return label included with your order, and following the return instructions provided in your digital invoice.",
                    style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "We accepts the following forms of payment for online purchases:\n\nPayPal may not be used to purchase Made to Order Décor or DIY items.\n\nThe full transaction value will be charged to your credit card after we have verified your card details, received credit authorisation, confirmed availability and prepared your order for shipping. For Made To Order, DIY, personalised and selected Décor products, payment will be taken at the time the order is placed.",
                    style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ],
              ),
            ]),
          )
        ],
      ));
}
