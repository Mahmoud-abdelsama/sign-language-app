import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFormTextField extends StatefulWidget {
   CustomFormTextField(
      {super.key,
      required this.validator,
      required this.hintText,
      required this.keyboardType,
      required this.obscureText,
      required this.controller,
      this.suffixIcon,
      this.onPressedIcon,
      this.onChanged});

  String? Function(String?)? validator;
  String? hintText;
  TextInputType keyboardType;
  bool obscureText;
  TextEditingController controller;
  Widget? suffixIcon;
  void Function()? onPressedIcon;
  void Function(String)? onChanged;

  @override
  State<CustomFormTextField> createState() => _CustomFormTextFieldState();
}

class _CustomFormTextFieldState extends State<CustomFormTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 326.w,
      height: 50.w,
      child: TextFormField(
        onChanged: widget.onChanged,
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        controller: widget.controller,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: widget.onPressedIcon,
              icon: widget.suffixIcon ??
                  Container(
                    height: 0,
                    width: 0,
                  ),
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: widget.hintText,
            disabledBorder: OutlineInputBorder(

                //borderRadius: BorderRadius.circular(20),

                //borderSide: BorderSide(color: Colors.white, width: 2)
                ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                  width: 0, color: Colors.white),
            ),focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
              width: 0, color: Colors.white),
        ),errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
              width: 0, color: Colors.white),
        )
        ),
      ),
    );
  }
}
