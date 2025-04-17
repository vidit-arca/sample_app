import 'package:flutter/material.dart';

class EpilepsyRxRegimenWidget extends StatefulWidget {
  final bool showField; // Flag to show the field only if Epilepsy = Yes
  final Function(List<String>) onSelectionChanged; // Callback for selected options

  const EpilepsyRxRegimenWidget({
    Key? key,
    required this.showField,
    required this.onSelectionChanged,
  }) : super(key: key);

  @override
  _EpilepsyRxRegimenWidgetState createState() =>
      _EpilepsyRxRegimenWidgetState();
}

class _EpilepsyRxRegimenWidgetState extends State<EpilepsyRxRegimenWidget> {
  final Map<String, bool> options = {
    "Phenytoin": false,
    "Valproate": false,
    "CBZ": false,
    "Levetiracetam": false,
    "Others": false,
  };

  @override
  Widget build(BuildContext context) {
    return widget.showField
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Current Rx Regimen for Epilepsy",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Please select the medications currently being used:",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const Divider(height: 20, thickness: 1),
                    ...options.keys.map((option) {
                      return CheckboxListTile(
                        title: Text(
                          option,
                          style: const TextStyle(fontSize: 16),
                        ),
                        value: options[option],
                        onChanged: (bool? value) {
                          setState(() {
                            options[option] = value ?? false;
                          });
                          widget.onSelectionChanged(
                            options.entries
                                .where((entry) => entry.value)
                                .map((entry) => entry.key)
                                .toList(),
                          );
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Theme.of(context).primaryColor,
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
          )
        : const SizedBox.shrink(); // Empty widget if showField is false
  }
}
