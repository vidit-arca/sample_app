import 'package:flutter/material.dart';

class CurrentRxRegimenWidget extends StatefulWidget {
  final String? diabetesStatus; // DM Yes/No status
  final Function(String?) onRegimenChanged;

  const CurrentRxRegimenWidget({
    Key? key,
    required this.diabetesStatus,
    required this.onRegimenChanged, required bool showCOPDRegimenInput, required List<String> selectedRegimens,
  }) : super(key: key);

  @override
  _CurrentRxRegimenWidgetState createState() => _CurrentRxRegimenWidgetState();
}

class _CurrentRxRegimenWidgetState extends State<CurrentRxRegimenWidget> {
  String? _selectedRegimen;

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
              'Specify Current Treatment Regimen',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: _selectedRegimen,
              decoration: InputDecoration(
                labelText: 'Select a treatment regimen',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'OAD',
                  child: Text('OAD'),
                ),
                DropdownMenuItem(
                  value: 'OAD + Insulin',
                  child: Text('OAD + Insulin'),
                ),
                DropdownMenuItem(
                  value: 'Insulin alone',
                  child: Text('Insulin alone'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedRegimen = value;
                });
                widget.onRegimenChanged(value); // Send selected value to parent
              },
            ),
          ],
        ),
      ),
    );
  }
}
