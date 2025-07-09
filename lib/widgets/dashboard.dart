import 'package:fitness_tracker/widgets/activity_widget.dart';
import 'package:fitness_tracker/widgets/bar_graph_card.dart';
import 'package:fitness_tracker/widgets/header_widget.dart';
import 'package:fitness_tracker/widgets/line_chart.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(height:15),
            HeaderWidget(),
            SizedBox(height:15 ),
            ActivityWidget(),
            SizedBox(height:15 ),
            LineChartCard(),
            SizedBox(height:15 ),
            BarGraphCard(),
            SizedBox(height:30 ),

            
          ],
        ),
      ) ,
    );
}
}