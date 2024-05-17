import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getSearchPage() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 57),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Icon(Icons.close),
        TextField(
          style:
              GoogleFonts.workSans(fontWeight: FontWeight.w400, fontSize: 21),
          decoration: InputDecoration(
            hintText: "Type here to Search",
            hintStyle:
                GoogleFonts.workSans(fontWeight: FontWeight.w400, fontSize: 21),
          ),
        ),
      ],
    ),
  );
}
