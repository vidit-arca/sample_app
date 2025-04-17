import 'package:flutter/material.dart';

class FamilyHistoryWidget extends StatefulWidget {
  final Function(Map<String, String?>) onFamilyHistoryChanged;

  const FamilyHistoryWidget({
    Key? key,
    required this.onFamilyHistoryChanged,
  }) : super(key: key);

  @override
  _FamilyHistoryWidgetState createState() => _FamilyHistoryWidgetState();
}

class _FamilyHistoryWidgetState extends State<FamilyHistoryWidget> {
  final Map<String, String?> _familyHistory = {
    'DM': null,
    'HTN': null,
    'IHD': null,
    'CKD': null,
    'Cancer': null,
    'Asthma': null,
    'Neurodegenerative': null,
  };

  Widget _buildDropdown(String condition) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        value: _familyHistory[condition],
        decoration: InputDecoration(
          labelText: condition,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.blueAccent,
          ),
          prefixIcon: const Icon(
            Icons.medical_services,
            color: Colors.blueAccent,
          ),
          filled: true,
          fillColor: Colors.blueAccent[50],
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 2,
            ),
          ),
        ),
        hint: const Text('Select Yes or No'),
        items: const [
          DropdownMenuItem(
            value: 'Yes',
            child: Text('Yes'),
          ),
          DropdownMenuItem(
            value: 'No',
            child: Text('No'),
          ),
        ],
        onChanged: (String? newValue) {
          setState(() {
            _familyHistory[condition] = newValue;
          });
          widget.onFamilyHistoryChanged(_familyHistory);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Family History of Medical Comorbid Illnesses',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          ..._familyHistory.keys.map((condition) => _buildDropdown(condition)),
        ],
      ),
    );
  }
}
