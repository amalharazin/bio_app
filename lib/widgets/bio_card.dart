import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioCard extends StatelessWidget {
  const BioCard({
    Key? key,
    required this.leadingIcon,
    required this.titttel,
    required this.subTittele,
    required this.trailingIcon,
    this.marginButtom=0,
   required this.onPressed,
  }) : super(key: key);
   final IconData leadingIcon;
   final String titttel;
   final String subTittele;
   final IconData trailingIcon;
   final double marginButtom;
   final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsetsDirectional.only(start: 30,end: 30,bottom: marginButtom),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.black45,
                  // shape: BoxShape.circle
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Icon(
                leadingIcon,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titttel,
                  style: GoogleFonts.poppins(
                    fontSize: 13,

                  ),
                ),
                Text(subTittele,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.black45,
                    // height: 1
                  ),
                ),

              ],
            ),
            Spacer(),
            IconButton(onPressed: onPressed, icon: Icon(trailingIcon),
              iconSize: 18,
            )



          ],
        ),
      ),
    );
  }
}