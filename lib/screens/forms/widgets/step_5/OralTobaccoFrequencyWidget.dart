import 'package:flutter/material.dart';

class OralTobaccoFrequencyWidget extends StatefulWidget {
  final Function(String?) onFrequencyChanged;
  final String? selectedFrequency;

  const OralTobaccoFrequencyWidget({
    Key? key,
    required this.onFrequencyChanged,
    this.selectedFrequency,
  }) : super(key: key);

  @override
  _OralTobaccoFrequencyWidgetState createState() =>
      _OralTobaccoFrequencyWidgetState();
}

class _OralTobaccoFrequencyWidgetState
    extends State<OralTobaccoFrequencyWidget> {
  String? _frequency;

  @override
  void initState() {
    super.initState();
    _frequency = widget.selectedFrequency;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Oral Tobacco Frequency (if Current)',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          // Frequency Dropdown
          DropdownButtonFormField<String>(
            value: _frequency,
            decoration: InputDecoration(
              labelText: 'Select Frequency',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
            items: const [
              DropdownMenuItem(value: 'Daily', child: Text('Daily')),
              DropdownMenuItem(
                  value: '2-3 times a week', child: Text('2-3 times a week')),
              DropdownMenuItem(
                  value: '>4 times a month', child: Text('>4 times a month')),
              DropdownMenuItem(
                  value: 'Occasionally', child: Text('Occasionally')),
            ],
            onChanged: (String? newValue) {
              setState(() {
                _frequency = newValue;
              });
              widget.onFrequencyChanged(newValue);
            },
            hint: const Text('Select Frequency'),
          ),
        ],
      ),
    );
  }
}
