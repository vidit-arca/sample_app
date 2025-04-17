import 'package:flutter/material.dart';

class CancerSiteWidget extends StatelessWidget {
  final bool showField; // Flag to show the field only if Cancer = Yes
  final Function(String) onSiteChanged; // Callback for Cancer site text

  const CancerSiteWidget({
    Key? key,
    required this.showField,
    required this.onSiteChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return showField
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Specify the site of cancer:",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              TextFormField(
                onChanged: onSiteChanged,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  hintText: "Enter site",
                ),
              ),
            ],
          )
        : const SizedBox.shrink(); // Empty widget if showField is false
  }
}