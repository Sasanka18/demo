import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/bar_graph_data.dart';
import 'package:fitness_tracker/models/graph_model.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    //bar graph data
    final barGraphData = BarGraphData();

    return GridView.builder(
      itemCount: barGraphData.data.length,
      shrinkWrap: true,
      //physics: const ScrollPhysics(),
      gridDelegate:
       SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing:12,
        crossAxisSpacing: 15, 
        childAspectRatio: 5/4,
        ), itemBuilder:(context,index){
          return CustomCard(
            padding:const EdgeInsets.all(5),
            child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(barGraphData.data[index].label,
                style:const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color:greyColor,
                ) ,
                ),
              ),
              //bar graph
              const SizedBox(height: 12),
              Expanded(
                child:BarChart(BarChartData(
                  barGroups: _chartGroups(
                    points: barGraphData.data[index].graph,
                    color: barGraphData.data[index].color,
                  ),
                  borderData: FlBorderData(
                    border: const Border(),
                  ),
                  titlesData: FlTitlesData(
                    //remove left title
                    leftTitles:AxisTitles(
                      sideTitles: SideTitles(
                         showTitles: false,
                      ),
                    ) ,
                    //remove right title
                    rightTitles:AxisTitles(
                      sideTitles: SideTitles(
                         showTitles: false,
                      ),
                    ) ,
                    //remove top title
                    topTitles:AxisTitles(
                      sideTitles: SideTitles(
                         showTitles: false,
                      ),
                    ) ,
                    //bottom title
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (double value,TitleMeta meta){
                          return Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(barGraphData.lable[value.toInt()],
                            style:TextStyle(
                              fontSize:11,
                              color: greyColor,
                              fontWeight: FontWeight.w500, 
                            ) ,
                            ),
                          );
                        }
                      ),
                    )
                   ),
                ),
                ) ,
              )
            ],
          ));
        } );
  }
 List<BarChartGroupData> _chartGroups({
    required List<GraphModel> points,
    required Color color,
  }) {
    return points
        .map((point) => BarChartGroupData(
              x: point.X.toInt(),
              barRods: [
                BarChartRodData(
                  toY: point.Y,
                  width: 12,
                  color: color,
                  borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ) 
                )
              ],
            ))
        .toList();
  }
}