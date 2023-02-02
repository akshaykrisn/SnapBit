import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:snapbit/datetime/date_time.dart';

class MonthlySummary extends StatelessWidget {
  final Map<DateTime, int>? datasets;
  final String startDate;

  const MonthlySummary({
    super.key,
    required this.datasets,
    required this.startDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
      child: HeatMap(
        startDate: DateTime.now().add(Duration(days: -86)),
        endDate: DateTime.now().add(Duration(days: 48)),
        datasets: datasets,
        colorMode: ColorMode.color,
        defaultColor: Color.fromARGB(255, 48, 47, 47),
        textColor: Colors.white,
        showColorTip: false,
        showText: true,
        scrollable: true,
        size: 30,
        colorsets: const {
          1: Color.fromARGB(19, 34, 2, 179),
          2: Color.fromARGB(40, 34, 179, 8),
          3: Color.fromARGB(60, 34, 179, 8),
          4: Color.fromARGB(80, 34, 179, 8),
          5: Color.fromARGB(100, 34, 179, 8),
          6: Color.fromARGB(120, 34, 179, 8),
          7: Color.fromARGB(150, 34, 179, 8),
          8: Color.fromARGB(180, 34, 179, 8),
          9: Color.fromARGB(220, 34, 179, 8),
          10: Color.fromARGB(255, 34, 179, 8),
        },
        onClick: (value) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(value.toString())));
        },
      ),
    );
  }
}