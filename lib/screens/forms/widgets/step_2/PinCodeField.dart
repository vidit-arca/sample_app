import 'package:flutter/material.dart';

class PinCodeField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? hintText;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final ValueChanged<String>? onChanged;
  final String? emptyError;
  final String? lengthError;
  final int pinCodeLength;

  const PinCodeField({
    super.key,
    required this.controller, // Named parameter
    required this.label,
    this.hintText,
    this.labelStyle,
    this.hintStyle,
    this.onChanged,
    this.emptyError,
    this.lengthError,
    this.pinCodeLength = 6, // Default to 6-digit pin codes
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: labelStyle ??
            TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
        hintText: hintText ?? 'Enter your pin code',
        hintStyle: hintStyle ??
            TextStyle(
              color: Colors.grey[400],
            ),
        prefixIcon: Icon(
          Icons.location_on,
          color: Colors.blue,
        ),
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
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
        counterText: '', // Hides the default character counter
      ),
      keyboardType: TextInputType.number,
      maxLength: pinCodeLength, // Limits input to the specified length
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return emptyError ?? 'Please enter the pin code';
        } else if (value.length != pinCodeLength) {
          return lengthError ?? 'Pin code must be $pinCodeLength digits';
        }
        return null;
      },
    );
  }
}
