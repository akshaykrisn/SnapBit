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
      child: HeatMapCalendar(
        // startDate: DateTime.now().add(Duration(days: -86)),
        // endDate: DateTime.now().add(Duration(days: 48)),
        datasets: datasets,
        flexible: true,
        colorMode: ColorMode.color,
        defaultColor: Color.fromARGB(255, 48, 47, 47),
        textColor: Colors.white,
        showColorTip: false,
        // showText: true,
        // scrollable: true,
        size: 30,
        colorsets: const {
          1: Color.fromARGB(19, 2, 20, 179),
          2: Color.fromARGB(40, 2, 20, 179),
          3: Color.fromARGB(59, 2, 14, 179),
          4: Color.fromARGB(80, 2, 179, 8),
          5: Color.fromARGB(100, 2, 179, 8),
          6: Color.fromARGB(120, 2, 179, 8),
          7: Color.fromARGB(150, 2, 179, 8),
          8: Color.fromARGB(180, 2, 179, 8),
          9: Color.fromARGB(220, 2, 179, 8),
          10: Color.fromARGB(255, 2, 179, 8),
        },
        onClick: (value) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(value.toString())));
        },
      ),
    );
  }
}
