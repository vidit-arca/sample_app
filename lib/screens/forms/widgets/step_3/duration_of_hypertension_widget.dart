import 'package:flutter/material.dart';

class DurationOfHypertensionWidget extends StatefulWidget {
  final bool showDurationInput; // Determines if the input field should be visible
  final TextEditingController durationController; // Controller to manage the numeric input

  const DurationOfHypertensionWidget({
    Key? key,
    required this.showDurationInput,
    required this.durationController,
  }) : super(key: key);

  @override
  _DurationOfHypertensionWidgetState createState() =>
      _DurationOfHypertensionWidgetState();
}

class _DurationOfHypertensionWidgetState
    extends State<DurationOfHypertensionWidget> {
  @override
  Widget build(BuildContext context) {
    if (!widget.showDurationInput) {
      return const SizedBox.shrink(); // Hide widget if `showDurationInput` is false
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Specify Duration of Hypertension (in Years)',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: widget.durationController,
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
          ),
        ],
      ),
    );
  }
}
