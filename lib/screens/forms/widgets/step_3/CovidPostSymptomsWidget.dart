import 'package:flutter/material.dart';

class CovidPostSymptomsWidget extends StatefulWidget {
  final List<String> symptoms; // List of symptoms
  final Function(List<String>) onSymptomsChanged; // Callback for updating symptoms

  const CovidPostSymptomsWidget({
    Key? key,
    required this.symptoms,
    required this.onSymptomsChanged,
  }) : super(key: key);

  @override
  _CovidPostSymptomsWidgetState createState() =>
      _CovidPostSymptomsWidgetState();
}

class _CovidPostSymptomsWidgetState extends State<CovidPostSymptomsWidget> {
  late List<String> symptoms;

  @override
  void initState() {
    super.initState();
    symptoms = List.from(widget.symptoms); // Initialize symptoms list
  }

  void _addSymptomField() {
    setState(() {
      symptoms.add('');
      widget.onSymptomsChanged(symptoms);
    });
  }

  void _removeSymptomField(int index) {
    setState(() {
      symptoms.removeAt(index);
      widget.onSymptomsChanged(symptoms);
    });
  }

  void _updateSymptom(int index, String value) {
    setState(() {
      symptoms[index] = value;
      widget.onSymptomsChanged(symptoms);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Specify Post-COVID Symptoms (if any):',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          ...symptoms.asMap().entries.map((entry) {
            final index = entry.key;
            final symptom = entry.value;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      initialValue: symptom,
                      decoration: InputDecoration(
                        labelText: 'Symptom ${index + 1}',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        _updateSymptom(index, value);
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      _removeSymptomField(index);
                    },
                  ),
                ],
              ),
            );
          }).toList(),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: _addSymptomField,
            icon: const Icon(Icons.add),
            label: const Text('Add Symptom'),
          ),
        ],
      ),
    );
  }
}
