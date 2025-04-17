import 'package:flutter/material.dart';

class DurationOfDLP extends StatefulWidget {
  final bool showDurationInput; // Whether to show the input field
  final TextEditingController durationController; // Controller for the text field
  final Function(String) onDurationChanged; // Callback for when the duration changes

  const DurationOfDLP({
    super.key,
    required this.showDurationInput,
    required this.durationController,
    required this.onDurationChanged,
  });

  @override
  _DurationOfDLPState createState() => _DurationOfDLPState();
}

class _DurationOfDLPState extends State<DurationOfDLP> {
  @override
  Widget build(BuildContext context) {
    if (!widget.showDurationInput) {
      return const SizedBox(); // Return an empty widget if the input should be hidden
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 600), // Apply responsive width
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Label
              const Text(
                'Specify Duration of Dyslipidemia (in years)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              // Numeric input field
              TextField(
                controller: widget.durationController,
                keyboardType: TextInputType.number, // Numeric keyboard
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 16.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.blueAccent),
                  ),
                  hintText: 'Enter duration in years',
                ),
                onChanged: (value) {
                  widget.onDurationChanged(value); // Notify parent widget of changes
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
