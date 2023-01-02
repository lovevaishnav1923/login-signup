import 'package:flutter/material.dart';

Container textfield(TextFormField textFormField) {
  return Container(
    height: 55,
    decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(15)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: textFormField,
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    ),
  );
}

//textstyle for registration fields
TextStyle textstyle() {
  return TextStyle(fontSize: 14, color: Colors.black);
}
