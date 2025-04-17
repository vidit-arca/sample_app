import 'package:flutter/material.dart';

class SmokingFrequencyWidget extends StatefulWidget {
  final String? smokingStatus; // Current/Former/Never
  final Function(String?)
      onFrequencyChanged; // Callback function for selected frequency

  const SmokingFrequencyWidget({
    Key? key,
    required this.smokingStatus,
    required this.onFrequencyChanged,
  }) : super(key: key);

  @override
  _SmokingFrequencyWidgetState createState() => _SmokingFrequencyWidgetState();
}

class _SmokingFrequencyWidgetState extends State<SmokingFrequencyWidget> {
  String? _selectedFrequency;

  @override
  void initState() {
    super.initState();
    // Initialize _selectedFrequency to a default value if needed
    if (widget.smokingStatus == 'Current') {
      _selectedFrequency =
          'Daily'; // Default value when smokingStatus is 'Current'
    } else {
      _selectedFrequency = null; // If not 'Current', don't show a frequency
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:
          widget.smokingStatus == 'Current', // Show only if Smoking = Current
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Specify Smoking Frequency',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: _selectedFrequency,
              decoration: InputDecoration(
                labelText: 'Select frequency',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'Daily',
                  child: Text('Daily'),
                ),
                DropdownMenuItem(
                  value: '2-3 times a week',
                  child: Text('2-3 times a week'),
                ),
                DropdownMenuItem(
                  value: '>4 times a month',
                  child: Text('>4 times a month'),
                ),
                DropdownMenuItem(
                  value: 'Occasionally',
                  child: Text('Occasionally'),
                ),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  _selectedFrequency = newValue;
                });
                widget.onFrequencyChanged(
                    newValue); // Pass the selected value back
              },
              validator: (value) {
                // Optional: Add validation to ensure a selection is made
                if (value == null) {
                  return 'Please select a frequency';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            // Add further logic for showing nicotine dependence assessment if frequency is 'Daily'
            if (_selectedFrequency == 'Daily')
              const Text(
                'You may need to assess Nicotine Dependence.',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
