import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/sheduled_data.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SheduledWidget extends StatelessWidget {
  const SheduledWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final sheduledData = SheduledData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Sheduled',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: secondryColor,
          
        ),
        ),
        const SizedBox(height: 12
        ),
        //show the sheduled data
        for (var index = 0; index < sheduledData.shecultedtasks.length; index++)
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: CustomCard(
              color:limeColor,
               child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sheduledData.shecultedtasks[index].title,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: secondryColor,
                        ),
                      ),
                      Text(
                        sheduledData.shecultedtasks[index].date,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color:greyColor,
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.alarm,color:greyColor),
                ],
               )
            ),
          ),
         
      ],
    );
  }
}