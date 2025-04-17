import 'package:flutter/material.dart';

class CurrentRxRegimenHTNWidget extends StatefulWidget {
  final bool showRegimenInput; // Determines if the checkbox group should be visible
  final Function(List<String>) onSelectionChanged; // Callback for selected options

  const CurrentRxRegimenHTNWidget({
    Key? key,
    required this.showRegimenInput,
    required this.onSelectionChanged,
  }) : super(key: key);

  @override
  _CurrentRxRegimenHTNWidgetState createState() =>
      _CurrentRxRegimenHTNWidgetState();
}

class _CurrentRxRegimenHTNWidgetState extends State<CurrentRxRegimenHTNWidget> {
  final List<String> _options = ['CCB', 'BB', 'ACEi/ARB', 'Diuretics', 'Others'];
  final List<String> _selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    if (!widget.showRegimenInput) {
      return const SizedBox.shrink(); // Hide widget if `showRegimenInput` is false
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Text(
            'Specify Current Treatment Regimen for Hypertension',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),

          // Checkbox List
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: _options.map((option) {
                return CheckboxListTile(
                  value: _selectedOptions.contains(option),
                  title: Text(option),
                  onChanged: (bool? isChecked) {
                    setState(() {
                      if (isChecked == true) {
                        _selectedOptions.add(option);
                      } else {
                        _selectedOptions.remove(option);
                      }
                      widget.onSelectionChanged(_selectedOptions); // Notify parent
                    });
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
