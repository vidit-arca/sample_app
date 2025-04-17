import 'package:flutter/material.dart';

class NutritionalDataWidget extends StatefulWidget {
  final Function(String?) onDietaryPatternChanged;

  const NutritionalDataWidget({
    Key? key,
    required this.onDietaryPatternChanged,
  }) : super(key: key);

  @override
  _NutritionalDataWidgetState createState() => _NutritionalDataWidgetState();
}

class _NutritionalDataWidgetState extends State<NutritionalDataWidget> {
  String? _dietaryPattern;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nutritional/Dietary Data',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            value: _dietaryPattern,
            decoration: InputDecoration(
              labelText: 'Assess Dietary Pattern',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
            items: const [
              DropdownMenuItem(
                  value: 'Balanced Diet', child: Text('Balanced Diet')),
              DropdownMenuItem(
                  value: 'High Protein', child: Text('High Protein')),
              DropdownMenuItem(value: 'Low Carb', child: Text('Low Carb')),
              DropdownMenuItem(value: 'Vegan', child: Text('Vegan')),
              DropdownMenuItem(value: 'Other', child: Text('Other')),
            ],
            onChanged: (String? newValue) {
              setState(() {
                _dietaryPattern = newValue;
              });
              widget.onDietaryPatternChanged(newValue);
            },
          ),
          const SizedBox(height: 20),
          const Text(
            'Digital Version of CMC Lifestyle Medicine Nutritional Monitoring Sheet',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // Placeholder for the link action after permission is obtained
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Link will be uploaded after permission.')),
              );
            },
            child: const Text('Access Monitoring Sheet'),
          ),
        ],
      ),
    );
  }
}
