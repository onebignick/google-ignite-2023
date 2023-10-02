import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    DateTime start = dateRange.start;
    DateTime end = dateRange.end;
    String startFormat = DateFormat('EEE, d MMM').format(start);
    String endFormat = DateFormat('EEE, d MMM').format(end);
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 0.5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            child:
                Text(startFormat, style: const TextStyle(color: Colors.black)),
            onPressed: () async {
              final DateTimeRange? dateTimeRange = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000));
              if (dateTimeRange != null) {
                setState(() {
                  dateRange = dateTimeRange;
                  start = dateRange.start;
                  end = dateRange.end;
                  startFormat = DateFormat('EEE, d MMM').format(start);
                  endFormat = DateFormat('EEE, d MMM').format(end);
                });
              }
            },
          ),
          const Text('|', style: TextStyle(color: Colors.grey)),
          TextButton(
            child: Text(endFormat, style: const TextStyle(color: Colors.black)),
            onPressed: () async {
              final DateTimeRange? dateTimeRange = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000));
              if (dateTimeRange != null) {
                setState(() {
                  dateRange = dateTimeRange;
                  start = dateRange.start;
                  end = dateRange.end;
                  startFormat = DateFormat('EEE, d MMM').format(start);
                  endFormat = DateFormat('EEE, d MMM').format(end);
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
