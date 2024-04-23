import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';

class DateWidget extends StatefulWidget {
  @override
  _DateWidgetState createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _buildDateButton("Day", "${selectedDate.day}"),
        _buildDateButton("Month", "${selectedDate.month}"),
        _buildDateButton("Year", "${selectedDate.year}"),
      ],
    );
  }

  Widget _buildDateButton(String label, String value) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Column(
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Text(
                  value,
                  style: const TextStyle(fontSize: 16),
                ),
                horisontalSpace(5),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ],
      ),
    );
    // Column(
    //   children: [
    //     Text(
    //       label,
    //       style: const TextStyle(fontSize: 16),
    //     ),
    //     ElevatedButton(
    //       onPressed: () => _selectDate(context),
    //       child: Text(value),
    //     ),
    //   ],
    // );
  }
}
