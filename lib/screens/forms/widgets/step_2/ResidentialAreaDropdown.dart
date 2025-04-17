import 'package:flutter/material.dart';

class ResidentialAreaDropdown extends StatelessWidget {
  final String selectedResidentialArea;
  final ValueChanged<String?> onChanged;

  const ResidentialAreaDropdown({
    super.key,
    required this.selectedResidentialArea,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedResidentialArea.isEmpty ? null : selectedResidentialArea,
      onChanged: onChanged,
      items: <String>[
        'Urban',
        'Suburban',
        'Rural',
        'Other',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: 'Residential Area',
        labelStyle: TextStyle(
          color: Colors.grey[600],
          fontWeight: FontWeight.w600,
        ),
        hintText: 'Select Residential Area',
        prefixIcon: Icon(Icons.location_city_outlined, color: Colors.blueAccent),
        filled: true,
        fillColor: Colors.grey[100],
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.blueAccent.withOpacity(0.5), width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.blueAccent, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.redAccent, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.redAccent, width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      dropdownColor: Colors.grey[50], // Dropdown menu background color
    );
  }
}
