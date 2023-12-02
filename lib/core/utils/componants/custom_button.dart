import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_colors.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    super.key,required this.text,required this.onTap,required this.backgroundColor,required this.borderColor
  });

  String text;
   void Function() onTap;
   Color backgroundColor;
   Color borderColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        width: 230.w,
        height: 48.w,
        decoration: BoxDecoration(
          color:backgroundColor ,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(color: borderColor)),
        child: Center(
            child: Text(
              text,
              style: GoogleFonts.inter(
                  color: AppColors.secondaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            )),
      ),
    );
  }
}
