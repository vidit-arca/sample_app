import 'package:flutter/material.dart';

class CustomStepForm extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  CustomStepForm({super.key});

  // Widget for creating a styled TextFormField
  Widget _buildTextField(String labelText, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),
        hintText: 'Enter your $labelText',
        hintStyle: TextStyle(color: Colors.grey[400]),
        prefixIcon: Icon(
          labelText == 'Enter your name' ? Icons.person : Icons.email,
          color: Colors.teal,
        ),
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blueAccent, width: 2),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Name Field
        _buildTextField('Enter your name', _nameController),
        SizedBox(height: 16),
        // Email Field
        _buildTextField('Enter your email', _emailController),
      ],
    );
  }
}
