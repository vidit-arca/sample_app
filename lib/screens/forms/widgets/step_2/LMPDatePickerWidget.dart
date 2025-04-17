// LMP Date Picker Widget
import 'package:flutter/material.dart';

class LMPDatePickerWidget extends StatelessWidget {
  final TextEditingController lmpController;
  final String? selectedMenopausalStatus;

  const LMPDatePickerWidget({
    super.key,
    required this.lmpController,
    required this.selectedMenopausalStatus,
  });

  @override
  Widget build(BuildContext context) {
    return selectedMenopausalStatus == 'Pre-Menopausal' ||
            selectedMenopausalStatus == 'Peri-Menopausal'
        ? Column(
            children: [
              TextFormField(
                controller: lmpController,
                decoration: InputDecoration(
                  labelText: "Last Menstrual Period (LMP) DD/MM/YY",
                  labelStyle: TextStyle(
                    color: Colors.grey[600],
                  ),
                  hintText: 'Select LMP date',
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                  prefixIcon: Icon(
                    Icons.calendar_today,
                    color: Colors.blueAccent,
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.blueAccent.withOpacity(0.5),
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
                keyboardType: TextInputType.datetime,
                onTap: () async {
                  DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  if (picked != null) {
                    lmpController.text =
                        "${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year.toString().substring(2, 4)}";
                  }
                },
              ),
              SizedBox(height: 16),
            ],
          )
        : SizedBox();
  }
}