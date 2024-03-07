import 'package:flutter/material.dart';

class DateSelect extends StatefulWidget {
  const DateSelect({Key? key}) : super(key: key);

  @override
  State<DateSelect> createState() => _DateSelectState();

  Future<void> selectDate(BuildContext context) async {
    _DateSelectState state = _DateSelectState();
    await state._selectDate(context);
  }
}

class _DateSelectState extends State<DateSelect> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.yellow,
            cardColor: Colors.black,
            colorScheme: ColorScheme.light(
              primary: Colors.yellow,
              onPrimary: Colors.black,
              onSurface: Colors.green,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    // Your existing build method
    return Container();
  }
}
