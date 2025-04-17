import 'package:flutter/material.dart';

class CurrentRxRegimenWidget extends StatefulWidget {
  final bool showCOPDRegimenInput; // Determines if the regimen input should be visible
  final List<String> selectedRegimens; // List of selected treatment regimens
  final Function(List<String>) onRegimenChanged; // Callback to notify parent about changes

  const CurrentRxRegimenWidget({
    Key? key,
    required this.showCOPDRegimenInput,
    required this.selectedRegimens,
    required this.onRegimenChanged,
  }) : super(key: key);

  @override
  _CurrentRxRegimenWidgetState createState() => _CurrentRxRegimenWidgetState();
}

class _CurrentRxRegimenWidgetState extends State<CurrentRxRegimenWidget> {
  // List of all available options
  final List<String> treatmentOptions = [
    'Inhaled SABA/LABA',
    'Inhaled LAMA',
    'Inhaled ICS',
    'Oral Theophyllines'
  ];

  // Checkbox values
  late List<String> selectedRegimens;

  @override
  void initState() {
    super.initState();
    selectedRegimens = widget.selectedRegimens;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Only show the input field if showCOPDRegimenInput is true (COPD = Yes)
          if (widget.showCOPDRegimenInput)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Specify Current Treatment Regimen for COPD',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                // Display all the treatment options with checkboxes
                ...treatmentOptions.map((option) {
                  return CheckboxListTile(
                    title: Text(option),
                    value: selectedRegimens.contains(option),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          selectedRegimens.add(option); // Add option if selected
                        } else {
                          selectedRegimens.remove(option); // Remove option if deselected
                        }
                      });
                      widget.onRegimenChanged(selectedRegimens); // Notify parent widget of selection change
                    },
                  );
                }).toList(),
              ],
            ),
          // Add extra space when the input is not visible (COPD = No)
          if (!widget.showCOPDRegimenInput)
            const SizedBox(height: 10),
        ],
      ),
    );
  }
}
