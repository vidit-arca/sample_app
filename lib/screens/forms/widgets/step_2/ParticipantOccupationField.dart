import 'package:flutter/material.dart';

class ParticipantOccupationField extends StatelessWidget {
  final String selectedOccupation;
  final ValueChanged<String?> onChanged;

  const ParticipantOccupationField({super.key, 
    required this.selectedOccupation,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedOccupation.isEmpty ? null : selectedOccupation,
      onChanged: onChanged,
      items: <String>[
        'Legislators, senior officials and managers',
        'Professionals',
        'Technicians and associate professionals',
        'Clerks',
        'Skilled workers and shop and market sales workers',
        'Skilled agricultural and fishery workers',
        'Craft and related trade workers',
        'Plant and machine operators and assemblers',
        'Elementary occupation',
        'Unemployed',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row(
            children: [
              Icon(
                Icons.work_outline,
                color: Colors.teal,
              ),
              SizedBox(width: 10),
              Text(value),
            ],
          ),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: 'Participant’s Occupation',
        labelStyle: TextStyle(
          color: Colors.grey[600],
          fontWeight: FontWeight.w500,
        ),
        hintText: 'Select occupation',
        hintStyle: TextStyle(
          color: Colors.grey[400],
        ),
        prefixIcon: Icon(
          Icons.work_outline,
          color: Colors.teal,
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