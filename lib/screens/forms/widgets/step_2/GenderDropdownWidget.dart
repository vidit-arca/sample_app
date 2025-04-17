import 'package:flutter/material.dart';

class GenderDropdownWidget extends StatelessWidget {
  final String? selectedGender;
  final Function(String?) onGenderChanged;
  final TextEditingController? lmpController;

  const GenderDropdownWidget({
    super.key,
    required this.selectedGender,
    required this.onGenderChanged,
    this.lmpController, String? selectedMenopausalStatus, required Null Function(dynamic newValue) onMenopausalStatusChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedGender,
      onChanged: onGenderChanged,
      items: <String>['Male', 'Female', 'Other']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: 'Gender',
        labelStyle: TextStyle(
          color: Colors.grey[600],
          fontWeight: FontWeight.w600,
        ),
        hintText: 'Select gender',
        prefixIcon: Icon(Icons.person_outline, color: Colors.blueAccent),
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
        ),
      ),
    );
  }
}
