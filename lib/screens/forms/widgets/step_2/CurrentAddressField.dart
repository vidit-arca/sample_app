import 'package:flutter/material.dart';

class CurrentAddressField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText; // Customizable label text
  final String? Function(String?)? validator; // Validation function

  const CurrentAddressField({
    super.key,
    required this.controller,
    this.labelText = 'Current Address',
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.blueGrey,
        ),
        hintText: 'Enter your current address',
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.grey[400],
        ),
        prefixIcon: Icon(
          Icons.location_on,
          color: Colors.blueAccent,
        ),
        filled: true,
        fillColor: Colors.grey[100],
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.blueAccent.withOpacity(0.5),
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
      maxLines: 3,
      minLines: 1,
      keyboardType: TextInputType.multiline,
      textInputAction: TextInputAction.newline,
      autocorrect: true, // Enable autocorrect
      textCapitalization: TextCapitalization.sentences, // Capitalize sentences
      style: TextStyle(
        fontSize: 14,
        color: Colors.black87,
      ),
      validator: validator, // Validation function
    );
  }
}
