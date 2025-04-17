import 'package:flutter/material.dart';

class ObstetricScoreField extends StatelessWidget {
  final TextEditingController controller;
  final String? selectedGender;  // Change this to nullable
  final String? selectedMaritalStatus;  // Change this to nullable

  const ObstetricScoreField({
    Key? key,
    required this.controller,
    required this.selectedGender,
    required this.selectedMaritalStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (selectedGender == 'Female' && selectedMaritalStatus != 'Single') {
      return Column(
        children: [
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              labelText: "Obstetric Score (P_L_A_SB_)",
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
              hintText: 'Enter obstetric score (e.g., P_L_A_SB_)',
              hintStyle: TextStyle(
                color: Colors.grey[500],
              ),
              prefixIcon: Icon(
                Icons.format_list_numbered,
                color: Colors.blueAccent,
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
          ),
          SizedBox(height: 16),
        ],
      );
    } else {
      return SizedBox.shrink();
    }
  }
}
