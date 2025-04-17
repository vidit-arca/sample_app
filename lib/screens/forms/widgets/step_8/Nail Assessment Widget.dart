import 'package:flutter/material.dart';

class NailAssessmentWidget extends StatefulWidget {
  final Function(String, String) onChanged;

  const NailAssessmentWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  _NailAssessmentWidgetState createState() => _NailAssessmentWidgetState();
}

class _NailAssessmentWidgetState extends State<NailAssessmentWidget> {
  String? selectedValue = "Normal";
  TextEditingController abnormalController = TextEditingController();
  String abnormalText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(labelText: "Nail Assessment"),
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
              labelText: "Specify Nail Changes",
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
