import 'package:flutter/material.dart';

class TypeOfDiabetesWidget extends StatefulWidget {
  final String? diabetesStatus; // DM Yes/No status
  final Function(String?) onTypeChanged;

  const TypeOfDiabetesWidget({
    Key? key,
    required this.diabetesStatus,
    required this.onTypeChanged,
  }) : super(key: key);

  @override
  _TypeOfDiabetesWidgetState createState() => _TypeOfDiabetesWidgetState();
}

class _TypeOfDiabetesWidgetState extends State<TypeOfDiabetesWidget> {
  String? _selectedType; // Selected type of diabetes

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.diabetesStatus == 'Yes', // Show only if DM = Yes
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Specify Type of Diabetes',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: _selectedType,
              decoration: InputDecoration(
                labelText: 'Select a type',
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueAccent,
                ),
                prefixIcon: const Icon(
                  Icons.bloodtype, // Icon for Type of Diabetes
                  color: Colors.blueAccent,
                ),
                filled: true,
                fillColor: Colors.grey[100], // Background color
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
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.redAccent,
                    width: 2,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.redAccent,
                    width: 2,
                  ),
                ),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'Type 1',
                  child: Text('Type 1'),
                ),
                DropdownMenuItem(
                  value: 'Type 2',
                  child: Text('Type 2'),
                ),
                DropdownMenuItem(
                  value: 'Others',
                  child: Text('Others'),
                ),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  _selectedType = newValue;
                });
                widget.onTypeChanged(newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}
