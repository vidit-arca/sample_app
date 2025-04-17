import 'package:flutter/material.dart';

class CurrentRxRegimenCOPDWidget extends StatefulWidget {
  final String? copdStatus; // COPD status (Yes/No)
  final Function(List<String>) onTreatmentChanged; // Callback for treatment changes

  const CurrentRxRegimenCOPDWidget({
    Key? key,
    required this.copdStatus,
    required this.onTreatmentChanged,
  }) : super(key: key);

  @override
  _CurrentRxRegimenCOPDWidgetState createState() =>
      _CurrentRxRegimenCOPDWidgetState();
}

class _CurrentRxRegimenCOPDWidgetState extends State<CurrentRxRegimenCOPDWidget> {
  // List to keep track of selected treatments
  List<String> _selectedTreatments = [];

  // List of possible treatments
  final List<String> _treatmentOptions = [
    'Inhaled SABA/LABA',
    'Inhaled LAMA',
    'Inhaled ICS',
    'Oral Theophyllines',
  ];

  // Handle checkbox changes
  void _onTreatmentChanged(bool? selected, String treatment) {
    setState(() {
      if (selected != null && selected) {
        _selectedTreatments.add(treatment); // Add to list if selected
      } else {
        _selectedTreatments.remove(treatment); // Remove from list if unselected
      }
    });
    widget.onTreatmentChanged(_selectedTreatments); // Pass the selected treatments back
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.copdStatus == 'Yes', // Show only if COPD = Yes
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.grey.shade300, width: 1.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 8.0,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Specify Current Treatment Regimen for COPD',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Please select all treatments that apply from the options below.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 20),

              // Treatment options with decoration applied
              ..._treatmentOptions.map((treatment) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      treatment,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    value: _selectedTreatments.contains(treatment),
                    onChanged: (bool? selected) {
                      _onTreatmentChanged(selected, treatment);
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.blue,
                    checkColor: Colors.white,
                    tileColor: Colors.grey.shade50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
