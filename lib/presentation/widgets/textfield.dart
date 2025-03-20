import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const TextfieldWidget({super.key,required this.controller,required this.hintText});

  @override
  Widget build(BuildContext context) {
    return  TextField(
            controller:controller ,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0), 
                borderSide: BorderSide(
          color: Colors.black, 
          width: 2.0,        
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
          color: Colors.green, 
          width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
          color: Colors.black, 
          width: 1.5,
                ),
              ),
            ),
            style: TextStyle(color: Colors.black),
          );
  }
}