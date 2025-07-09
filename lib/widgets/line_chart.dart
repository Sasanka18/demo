import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/line_chart_data.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return CustomCard(child: Column(
    children: [
      const Text(
        'Steps Overview',
         style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: greyColor,
         ),
      ),
      const SizedBox(height: 20),
      AspectRatio(aspectRatio: 16/6,
      child: LineChart(LineChartData(
       lineTouchData: const LineTouchData(
        handleBuiltInTouches: true,
       ),
       titlesData: FlTitlesData(
        rightTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (double value, TitleMeta meta) {
              return data.bottomTitle[value.toInt()] != null
                  ? SideTitleWidget(
                      meta: meta,
                      child: Text(
                        data.bottomTitle[value.toInt()].toString(),
                       
                        style: const TextStyle(
                          color: greyColor,
                          fontSize: 10,
                        ),
                      ),
                    )
                  : const SizedBox.shrink();
              
            },
          ),
        ),
        //left side titles
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            reservedSize: 40,
            getTitlesWidget: (double value,TitleMeta meta) {
              return data.leftTitle[value.toInt()] != null ? 
              Text(data.leftTitle[value.toInt()].toString(),style: const TextStyle(
                          color: greyColor,
                          fontSize: 10,
                        ),
                        ) : const SizedBox();
            },
          )
        )
       ),
       borderData: FlBorderData(show: false
        ),
        lineBarsData: [
          LineChartBarData(
            color: selectionColor,
            barWidth: 2.5,
            belowBarData: BarAreaData(
              gradient: LinearGradient(colors:[
                // ignore: deprecated_member_use
                selectionColor.withOpacity(0.5),
                Colors.transparent,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
               ),
               show: true,
            ),
            dotData: const FlDotData(
              show: false,
            ),
            spots: data.spots,
          ),
        ],
        minX: 0,
        maxX: 120,
        minY: 0,
        maxY: 100,
      ),
      ),
      ),
    ],
    )
    );
  }
}