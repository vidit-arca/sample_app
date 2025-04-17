import 'package:flutter/material.dart';

class PsychiatricIllnessDurationWidget extends StatelessWidget {
  final bool isPsychiatricIllnessYes; // Flag to check if Psychiatric Illness = Yes
  final TextEditingController controller; // Controller for numeric input

  const PsychiatricIllnessDurationWidget({
    Key? key,
    required this.isPsychiatricIllnessYes,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isPsychiatricIllnessYes
        ? Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Specify Duration of Psychiatric Illness (in years):",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Duration in Years',
                    labelStyle: const TextStyle(
                      color: Colors.deepPurple, // Label text color
                    ),
                    prefixIcon: Icon(
                      Icons.timelapse, // Icon representing duration
                      color: Colors.deepPurple, // Icon color matching the theme
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.deepPurple.withOpacity(0.5),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                        width: 2,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey[100], // Background color for the field
                    hintText: 'Enter duration in years',
                    hintStyle: TextStyle(
                      color: Colors.grey[400], // Softer hint text color
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 12,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid duration';
                    }
                    return null;
                  },
                ),
              ],
            ),
          )
        : const SizedBox.shrink(); // Empty widget if Psychiatric Illness = No
  }
}
