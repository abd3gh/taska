import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // const CustomTextField({Key? key}) : super(key: key);

  final String title;
  final Function validator;
  TextEditingController controller;
  Widget? suffix;
  TextInputType? textInputType;

  CustomTextField({required this.title, required this.validator,
    required this.controller,this.suffix,this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,

      controller: this.controller,
      validator: (x)=>validator(x),
      decoration: InputDecoration(
        suffixIcon: suffix,
          filled: true,
          fillColor: Colors.grey.withOpacity(.2),
          hintText: this.title,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide.none
          )
      ),
    );
  }
}
