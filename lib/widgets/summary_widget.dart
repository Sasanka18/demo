import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:fitness_tracker/widgets/pie_chart.dart';
import 'package:fitness_tracker/widgets/sheduled_widget.dart';
import 'package:fitness_tracker/widgets/summary_details.dart';
import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: cardBgColor,
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            PieChartCard(),
            Text(
              'Summary',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            SummaryDetails(),
            SizedBox(height: 30),
           SheduledWidget(),
          ],
        ),
      ),
    );
  }
}

class Scheduled {}
