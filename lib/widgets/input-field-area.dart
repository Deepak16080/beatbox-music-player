import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class InputFieldArea extends StatelessWidget {
  final String? hint;
  final bool? obscure;
  final IconData? icon;
  final TextEditingController? emailcontroller;
  final TextEditingController? Passwordcontroller;
  final TextEditingController? phoneController;

  InputFieldArea(
      {this.hint, this.obscure, this.icon, this.emailcontroller, this.Passwordcontroller, this.phoneController});

  @override
  Widget build(BuildContext context) {
    return (new Container(
      margin: EdgeInsets.symmetric(horizontal: 44),
      decoration: new BoxDecoration(
        border: new Border(
          bottom: new BorderSide(
            width: 0.9,
            color: Colors.white24,
          ),
        ),
      ),
      child: Column(
        children: [
          if (icon != null) // Show icon if provided
            TextFormField(
              obscureText: obscure!,
              controller: obscure! ? Passwordcontroller : emailcontroller,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: new InputDecoration(
                icon: new Icon(
                  icon,
                  color: Colors.white,
                ),
                border: InputBorder.none,
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.white, fontSize: 15.0),
                contentPadding: const EdgeInsets.only(top: 30.0, right: 30.0, bottom: 30.0, left: 5.0),
              ),
            ),
          if (icon == null) // Show phone field with country picker
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: IntlPhoneField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: hint,
                  labelStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  hintText: '123456789', // Placeholder number
                  hintStyle: TextStyle(color: Colors.white),
                ),
                initialCountryCode: 'IN', // Initial country code
                onChanged: (phone) {
                  print(phone.completeNumber); // Callback when phone number changes
                },
              ),
            ),
        ],
      ),
    ));
  }
}
