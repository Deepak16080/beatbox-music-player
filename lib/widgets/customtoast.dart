import 'package:flutter/material.dart';

customtoast(BuildContext context, String message) {
  return Scaffold(
    body: Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.black,
        ),
        child: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}
 

 // Path: lib/main.dart