import 'package:flutter/material.dart';

class CKDDurationWidget extends StatelessWidget {
  final bool showCKDDurationInput; // Determines if the duration input should be visible
  final TextEditingController ckdDurationController; // Controller for the numeric input

  const CKDDurationWidget({
    Key? key,
    required this.showCKDDurationInput,
    required this.ckdDurationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Only show the duration input if showCKDDurationInput is true
          if (showCKDDurationInput) ...[
            const Text(
              'Specify Duration of Chronic Kidney Disease (CKD) in years',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),

            // Numeric input for the duration
            TextField(
              controller: ckdDurationController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Duration (in years)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
