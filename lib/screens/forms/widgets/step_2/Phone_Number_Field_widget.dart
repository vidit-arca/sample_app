import 'package:flutter/material.dart';

class PhoneNumberFieldWidget extends StatelessWidget {
  final TextEditingController phoneController;

  const PhoneNumberFieldWidget({
    super.key,
    required this.phoneController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: phoneController,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: "Phone Number",
        labelStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),
        hintText: 'Enter phone number',
        hintStyle: TextStyle(color: Colors.grey[400]),
        prefixIcon: Icon(Icons.phone, color: Colors.teal),
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blueAccent, width: 2),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your phone number';
        }
        return null;
      },
    );
  }
}
