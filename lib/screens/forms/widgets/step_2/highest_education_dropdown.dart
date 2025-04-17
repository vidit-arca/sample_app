import 'package:flutter/material.dart';

class HighestEducationField extends StatelessWidget {
  final String? selectedHighestEducation; // Nullable String for selected education
  final ValueChanged<String?> onChanged;

  const HighestEducationField({
    super.key, 
    required this.selectedHighestEducation,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String?>(
      value: selectedHighestEducation ?? 'High School', // Default to 'High School' if null
      onChanged: onChanged,
      items: <String>[
        'High School',
        'Undergraduate',
        'Postgraduate',
        'Doctorate',
        'Other',
      ].map<DropdownMenuItem<String?>>((String value) {
        return DropdownMenuItem<String?>(
          value: value,
          child: Row(
            children: [
              Icon(
                Icons.school,
                color: Colors.teal,
              ),
              SizedBox(width: 10),
              Text(value),
            ],
          ),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: 'Highest Education',
        labelStyle: TextStyle(
          color: Colors.grey[600],
          fontWeight: FontWeight.w500,
        ),
        hintText: 'Select highest education',
        hintStyle: TextStyle(
          color: Colors.grey[400],
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
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
    );
  }
}
