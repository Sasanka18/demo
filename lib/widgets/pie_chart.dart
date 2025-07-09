import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/pie_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartCard extends StatelessWidget {
  const PieChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = PieChartSampleData();
    return SizedBox(
      height:200,
      child:Stack(
        children:[PieChart(PieChartData(
          sectionsSpace: 0,
          centerSpaceRadius: 70,
          sections: pieChartData.pieChartSections,
        ),
        ),
        Positioned.fill(child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
         children: [
         // SizedBox(height:20),
          Text('70%',style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: secondryColor,
            fontWeight: FontWeight.w600,
            fontSize:20, 
          ),),
           SizedBox(height:20),
            Text('Of 100%',style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            // ignore: deprecated_member_use
            color: secondryColor.withOpacity(0.5),
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),),
         ],
        ),
        ),
        ] ,
      ) ,
    );
  }
}