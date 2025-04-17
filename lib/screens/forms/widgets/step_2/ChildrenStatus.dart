// children_status_field.dart
import 'package:flutter/material.dart';

class ChildrenStatusField extends StatelessWidget {
  final TextEditingController controller;

  ChildrenStatusField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: "Number of Children",
        labelStyle: TextStyle(
          color: Colors.grey, // Matching the blue theme
        ),
        hintText: 'Enter number of children',
        hintStyle: TextStyle(
          color: Colors.grey[500], // Softer hint text color
        ),
        prefixIcon: Icon(
          Icons.child_care,
          color: Colors.blueAccent, // Blue icon to match the theme
        ),
        filled: true,
        fillColor: Colors.grey[100], // Soft blue background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.blueAccent.withOpacity(0.5),
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 2,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ), // Padding inside the text field
      ),
      keyboardType: TextInputType.number,
    );
  }
}
