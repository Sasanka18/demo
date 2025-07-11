import 'package:fitness_tracker/constants/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSampleData {
  final List<PieChartSectionData> pieChartSections;

  PieChartSampleData()
    : pieChartSections = [
        PieChartSectionData(
          color: primaryColor,
          value: 25,
          showTitle: false,
          radius: 25,
        ),
        PieChartSectionData(
          color: Color(0XFF26E5FF),
          value: 20,
          showTitle: false,
          radius: 22,
        ),
        PieChartSectionData(
          color: const Color(0xFFFFCF26),
          value: 10,
          showTitle: false,
          radius: 19,
        ),
        PieChartSectionData(
          color: Color.fromARGB(255, 39, 238, 145),
          value: 15,
          showTitle: false,
          radius: 16,
        ),
        PieChartSectionData(
          // ignore: deprecated_member_use
          color: primaryColor.withOpacity(0.1),
          value: 25,
          showTitle: false,
          radius: 13,
        ),
      ];
}
