import 'package:flutter/material.dart';

class DurationOfDyslipidemiaWidget extends StatelessWidget {
  final bool showDurationInput;
  final TextEditingController durationController;

  const DurationOfDyslipidemiaWidget({
    Key? key,
    required this.showDurationInput,
    required this.durationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Show the title only if the user selects "Yes" for DLP
          if (showDurationInput) ...[
            const Text(
              'Specify Duration of Dyslipidemia (in years)',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),

            // Numeric input for duration (only visible if DLP is Yes)
            TextField(
              controller: durationController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Duration (in years)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
