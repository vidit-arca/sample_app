import 'package:flutter/material.dart';

class AgeFieldWidget extends StatelessWidget {
  final TextEditingController ageController;

  const AgeFieldWidget({Key? key, required this.ageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: ageController,
      decoration: InputDecoration(
        labelText: "Age",
        hintText: 'Age will be calculated automatically',
        prefixIcon: Icon(Icons.accessibility),
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blueAccent, width: 2),
        ),
      ),
      enabled: false,
      readOnly: true,
    );
  }
}
