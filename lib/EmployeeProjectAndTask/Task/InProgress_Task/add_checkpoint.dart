import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:emp_management_system/Colors_Fonts/mainColors/mainColors.dart';
import 'package:flutter/material.dart';

class AddCheckpoint {
  DateTime? selectedDate = DateTime.now();

  void buildAddCheckpoint(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: MainColors.offWhite,
          content: SizedBox(
            height: 180,
            width: 400,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: IconButton(
                            onPressed: () => {Navigator.pop(context)},
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () => _selectDate(context),
                              icon: const Icon(Icons.calendar_month_outlined),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              selectedDate != null
                                  ? "${selectedDate!.day.toString().padLeft(2, '0')}/${selectedDate!.month.toString().padLeft(2, '0')}/${selectedDate!.year}"
                                  : "Select a date",
                              style: Fonts.smallFonts(context),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          color: MainColors.offWhiteWithOpacity,
                          child: TextField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: "Checkpoint name...",
                              hintStyle: Fonts.hintFonts(context),
                              contentPadding: const EdgeInsets.all(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () => {Navigator.pop(context)},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 1, 189, 178)),
                      ),
                      child: Text("Add Checkpoint",
                          style: Fonts.bodyFonts(context)),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      // Update the selected date
      selectedDate = picked;
      Navigator.pop(context); // Close the date picker dialog
      buildAddCheckpoint(context); // Rebuild the dialog with the updated date
    }
  }
}
