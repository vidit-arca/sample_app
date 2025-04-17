import 'package:flutter/material.dart';

class MultiStepForm extends StatefulWidget {
  const MultiStepForm({super.key});

  @override
  _MultiStepFormState createState() => _MultiStepFormState();
}

class _MultiStepFormState extends State<MultiStepForm> {
  String? _selectedGender;
  String? _selectedMenopausalStatus;
  final TextEditingController _lmpController = TextEditingController();

  void _onGenderChanged(String? newValue) {
    setState(() {
      _selectedGender = newValue;
      // Reset Menopausal status and LMP when gender is changed
      _selectedMenopausalStatus = null;
      _lmpController.clear();
    });
  }

  void _onMenopausalStatusChanged(String? newValue) {
    setState(() {
      _selectedMenopausalStatus = newValue;
      // Reset LMP when Menopausal Status is changed
      _lmpController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Gender Dropdown
          GenderDropdownWidget(
            selectedGender: _selectedGender,
            onChanged: _onGenderChanged,
            lmpController: _lmpController,
            selectedMenopausalStatus: _selectedMenopausalStatus,
            onMenopausalStatusChanged: (String? newValue) {
              // You can add additional handling for this callback as needed
            },
          ),

          // Show Menopausal Status dropdown only if Gender is Female
          if (_selectedGender == 'Female') ...[
            MenopausalStatusDropdown(
              selectedMenopausalStatus: _selectedMenopausalStatus,
              onMenopausalStatusChanged: _onMenopausalStatusChanged,
            ),
          ],
        ],
      ),
    );
  }
}

class GenderDropdownWidget extends StatelessWidget {
  final String? selectedGender;
  final void Function(String?) onChanged;
  final TextEditingController lmpController;
  final String? selectedMenopausalStatus;
  final void Function(String?) onMenopausalStatusChanged;

  const GenderDropdownWidget({
    super.key,
    required this.selectedGender,
    required this.onChanged,
    required this.lmpController,
    required this.selectedMenopausalStatus,
    required this.onMenopausalStatusChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Gender Dropdown
        DropdownButtonFormField<String>(
          value: selectedGender,
          onChanged: onChanged,
          items: <String>['Male', 'Female', 'Other']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          }).toList(),
          decoration: InputDecoration(
            labelText: 'Gender',
            labelStyle: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w600,
            ),
            hintText: 'Select gender',
            hintStyle: TextStyle(
              color: Colors.grey[400],
            ),
            prefixIcon: Icon(
              Icons.person_outline,
              color: Colors.blueAccent,
            ),
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.blueAccent,
                width: 1.5,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.blueAccent.withOpacity(0.5),
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.blueAccent,
                width: 2,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class MenopausalStatusDropdown extends StatelessWidget {
  final String? selectedMenopausalStatus;
  final void Function(String?) onMenopausalStatusChanged;

  const MenopausalStatusDropdown({
    super.key,
    required this.selectedMenopausalStatus,
    required this.onMenopausalStatusChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedMenopausalStatus,
      onChanged: onMenopausalStatusChanged,
      items: <String>[
        'Pre-Menopausal',
        'Peri-Menopausal',
        'Post-Menopausal',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: 'Menopausal Status',
        labelStyle: TextStyle(
          color: Colors.grey[600],
        ),
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.blueAccent.withOpacity(0.5),
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 2,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}
