import 'package:flutter/material.dart';

class OralTobaccoWidget extends StatefulWidget {
  final Function(String?) onTobaccoStatusChanged;

  const OralTobaccoWidget({
    Key? key,
    required this.onTobaccoStatusChanged,
  }) : super(key: key);

  @override
  _OralTobaccoWidgetState createState() => _OralTobaccoWidgetState();
}

class _OralTobaccoWidgetState extends State<OralTobaccoWidget> {
  String? _tobaccoStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Participant’s H/O Oral Tobacco Use',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          // Oral Tobacco Use Status Dropdown
          DropdownButtonFormField<String>(
            value: _tobaccoStatus,
            decoration: InputDecoration(
              labelText: 'Tobacco Status',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
            items: const [
              DropdownMenuItem(value: 'Never', child: Text('Never')),
              DropdownMenuItem(value: 'Former', child: Text('Former')),
              DropdownMenuItem(value: 'Current', child: Text('Current')),
            ],
            onChanged: (String? newValue) {
              setState(() {
                _tobaccoStatus = newValue;
              });
              widget.onTobaccoStatusChanged(newValue);
            },
            hint: const Text('Select Tobacco Status'),
          ),
        ],
      ),
    );
  }
}
