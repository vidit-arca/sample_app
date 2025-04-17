import 'package:flutter/material.dart';

class HairAssessmentWidget extends StatefulWidget {
  final Function(String, String) onChanged;

  const HairAssessmentWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  _HairAssessmentWidgetState createState() => _HairAssessmentWidgetState();
}

class _HairAssessmentWidgetState extends State<HairAssessmentWidget> {
  String? selectedValue = "Normal";
  TextEditingController abnormalController = TextEditingController();
  String abnormalText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(labelText: "Hair Assessment"),
          value: selectedValue,
          items: ["Normal", "Abnormal"].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
              if (selectedValue == "Normal") {
                abnormalText = "";
                abnormalController.clear();
              }
            });
            widget.onChanged(selectedValue!, abnormalText);
          },
        ),
        if (selectedValue == "Abnormal") ...[
          const SizedBox(height: 10),
          TextField(
            controller: abnormalController,
            decoration: const InputDecoration(
              labelText: "Specify Hair Changes",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                abnormalText = value;
              });
              widget.onChanged(selectedValue!, abnormalText);
            },
          ),
        ],
      ],
    );
  }
}
