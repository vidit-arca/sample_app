import 'package:flutter/material.dart';

class LivingArrangementDropdown extends StatelessWidget {
  final String selectedLivingArrangement;
  final ValueChanged<String?> onChanged;

  const LivingArrangementDropdown({super.key, 
    required this.selectedLivingArrangement,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedLivingArrangement.isEmpty ? null : selectedLivingArrangement, // Allow null if the value is empty
      onChanged: onChanged,
      items: <String>[
        'Own house',
        'Rented house',
        'With parents',
        'With relatives',
        'Other',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row(
            children: [
              Icon(
                Icons.house,
                color: Colors.teal,
              ),
              SizedBox(width: 10),
              Text(value),
            ],
          ),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: 'Living Arrangement',
        labelStyle: TextStyle(
          color: Colors.grey[600],
          fontWeight: FontWeight.w500,
        ),
        hintText: 'Select living arrangement',
        hintStyle: TextStyle(
          color: Colors.grey[400],
        ),
        prefixIcon: Icon(
          Icons.house,
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
