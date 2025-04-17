import 'package:flutter/material.dart';

class COPDDurationWidget extends StatelessWidget {
  final String? copdStatus; // COPD status ("Yes" or "No")
  final TextEditingController copdDurationController; // Controller for numeric input
  final Function(String) onDurationChanged; // Callback for duration changes

  const COPDDurationWidget({
    Key? key,
    required this.copdStatus,
    required this.copdDurationController,
    required this.onDurationChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: copdStatus == "Yes", // Show only if COPD = Yes
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Specify Duration of COPD (in years)',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: copdDurationController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter duration in years',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
              onChanged: onDurationChanged,
            ),
          ],
        ),
      ),
    );
  }
}
