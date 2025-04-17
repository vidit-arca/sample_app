import 'package:flutter/material.dart';

class DurationOfDiabetesWidget extends StatefulWidget {
  final String? diabetesStatus; // DM Yes/No status
  final Function(String?) onDurationChanged;

  const DurationOfDiabetesWidget({
    Key? key,
    required this.diabetesStatus,
    required this.onDurationChanged,
  }) : super(key: key);

  @override
  _DurationOfDiabetesWidgetState createState() =>
      _DurationOfDiabetesWidgetState();
}

class _DurationOfDiabetesWidgetState extends State<DurationOfDiabetesWidget> {
  final TextEditingController _durationController = TextEditingController();

  @override
  void dispose() {
    _durationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.diabetesStatus == 'Yes', // Show only if DM = Yes
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Specify Duration of Diabetes (in years)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _durationController,
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
              onChanged: (value) {
                widget.onDurationChanged(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
