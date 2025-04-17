import 'package:flutter/material.dart';

class CurrentRxRegimenBAWidget extends StatefulWidget {
  final bool isBA; // Determines if BA is "Yes"
  final Function(List<String>) onChanged; // Callback for selected options

  const CurrentRxRegimenBAWidget({Key? key, required this.isBA, required this.onChanged})
      : super(key: key);

  @override
  _CurrentRxRegimenBAWidgetState createState() => _CurrentRxRegimenBAWidgetState();
}

class _CurrentRxRegimenBAWidgetState extends State<CurrentRxRegimenBAWidget> {
  // List of available options
  final List<String> _options = [
    "Inhaled SABA/LABA",
    "Inhaled LAMA",
    "Inhaled ICS",
    "Oral Theophyllines"
  ];

  // Tracks the selected options
  List<String> _selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return widget.isBA
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Specify Current Treatment Regimen for Bronchial Asthma:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100], // Light background color
                  border: Border.all(
                    color: Colors.grey.shade400, // Outline color
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: _options.map((option) {
                    return CheckboxListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text(
                        option,
                        style: const TextStyle(fontSize: 14),
                      ),
                      value: _selectedOptions.contains(option),
                      activeColor: Colors.blueAccent, // Checkbox active color
                      checkColor: Colors.white, // Checkbox check color
                      onChanged: (isSelected) {
                        setState(() {
                          if (isSelected == true) {
                            _selectedOptions.add(option);
                          } else {
                            _selectedOptions.remove(option);
                          }
                          widget.onChanged(_selectedOptions); // Notify parent of changes
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4), // Checkbox shape
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          )
        : const SizedBox(); // Empty widget if BA is not "Yes"
  }
}
