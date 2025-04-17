import 'package:flutter/material.dart';

class SmokingWidget extends StatefulWidget {
  final Function(String?) onSmokingStatusChanged;

  const SmokingWidget({
    Key? key,
    required this.onSmokingStatusChanged,
  }) : super(key: key);

  @override
  _SmokingWidgetState createState() => _SmokingWidgetState();
}

class _SmokingWidgetState extends State<SmokingWidget> {
  String? _smokingStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Participant’s H/O Smoking',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            value: _smokingStatus,
            decoration: InputDecoration(
              labelText: 'Smoking Status',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
            items: const [
              DropdownMenuItem(
                value: 'Never',
                child: Text('Never'),
              ),
              DropdownMenuItem(
                value: 'Former',
                child: Text('Former'),
              ),
              DropdownMenuItem(
                value: 'Current',
                child: Text('Current'),
              ),
            ],
            onChanged: (String? newValue) {
              setState(() {
                _smokingStatus = newValue;
              });
              widget.onSmokingStatusChanged(newValue);
            },
          ),
        ],
      ),
    );
  }
}
