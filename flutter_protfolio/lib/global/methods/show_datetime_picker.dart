import 'package:flutter/material.dart';

Future<DateTime> showDateOnlyPicker(
  BuildContext context,
) async {
  DateTime? selectedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2030),
  );
  return selectedDate ?? DateTime.now();
}

Future<TimeOfDay> showTimeOnlyPicker(
  BuildContext context,
) async {
    TimeOfDay? selectedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );
  return selectedTime ?? TimeOfDay.now();
}

// DateTime formatTimeOfDay(BuildContext context, TimeOfDay pickedTime) {
//
//   return DateFormat.jm().parse(pickedTime.format(context).toString());
// }
