import 'package:flutter/material.dart';

class OtherComorbiditiesWidget extends StatefulWidget {
  final List<String> comorbidities;
  final Function(List<String>) onComorbiditiesChanged;

  const OtherComorbiditiesWidget({
    Key? key,
    required this.comorbidities,
    required this.onComorbiditiesChanged,
  }) : super(key: key);

  @override
  _OtherComorbiditiesWidgetState createState() =>
      _OtherComorbiditiesWidgetState();
}

class _OtherComorbiditiesWidgetState extends State<OtherComorbiditiesWidget> {
  late List<String> comorbidities;

  @override
  void initState() {
    super.initState();
    comorbidities = List.from(widget.comorbidities);
  }

  void _addComorbidityField() {
    setState(() {
      comorbidities.add('');
      widget.onComorbiditiesChanged(comorbidities);
    });
  }

  void _removeComorbidityField(int index) {
    setState(() {
      comorbidities.removeAt(index);
      widget.onComorbiditiesChanged(comorbidities);
    });
  }

  void _updateComorbidity(int index, String value) {
    setState(() {
      comorbidities[index] = value;
      widget.onComorbiditiesChanged(comorbidities);
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
            'Participants History of Other Comorbidities:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          ...comorbidities.asMap().entries.map((entry) {
            final index = entry.key;
            final comorbidity = entry.value;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      initialValue: comorbidity,
                      decoration: InputDecoration(
                        labelText: 'Comorbidity ${index + 1}',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        _updateComorbidity(index, value);
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      _removeComorbidityField(index);
                    },
                  ),
                ],
              ),
            );
          }).toList(),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: _addComorbidityField,
            icon: const Icon(Icons.add),
            label: const Text('Add Comorbidity'),
          ),
        ],
      ),
    );
  }
}
