import 'package:flutter/material.dart';

class MaritalStatusDropdownWidget extends StatefulWidget {
  const MaritalStatusDropdownWidget({super.key, required String selectedMaritalStatus, required Null Function(String? newStatus) onMaritalStatusChanged});

  @override
  _MaritalStatusDropdownWidgetState createState() => _MaritalStatusDropdownWidgetState();
}

class _MaritalStatusDropdownWidgetState extends State<MaritalStatusDropdownWidget> {
  String? _selectedMaritalStatus;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedMaritalStatus,
      onChanged: (String? newValue) {
        setState(() {
          _selectedMaritalStatus = newValue;
        });
      },
      items: <String>[
        'Single',
        'Married',
        'Divorced',
        'Widowed',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: 'Marital Status',
        labelStyle: TextStyle(
          color: Colors.grey[600], // Consistent color with the theme
        ),
        hintText: 'Select your marital status',
        hintStyle: TextStyle(
          color: Colors.grey[400], // Softer hint text color for better readability
        ),
        prefixIcon: Icon(
          Icons.favorite, // Heart icon representing relationships
          color: Colors.blueAccent, // Consistent icon color
        ),
        filled: true,
        fillColor: Colors.grey[100], // Light blue background for the dropdown
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners for a smoother look
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
        ), // Padding inside the dropdown for better user experience
      ),
    );
  }
}
