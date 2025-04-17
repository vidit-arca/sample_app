import 'package:flutter/material.dart';

class DurationOfIHDWidget extends StatelessWidget {
  final bool isIHDSelected; // Flag to show this widget only if IHD = Yes
  final Function(String) onChanged; // Callback for duration input

  const DurationOfIHDWidget({
    Key? key,
    required this.isIHDSelected,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isIHDSelected
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Specify Duration of Ischemic Heart Disease (in years)",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Duration (in years)',
                  hintText: "Enter duration in years",
                  prefixIcon: const Icon(Icons.timer),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                ),
                onChanged: onChanged,
              ),
            ],
          )
        : const SizedBox.shrink(); // Return an empty widget if IHD is not selected
  }
}
