import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/health_activity_data.dart';
import 'package:fitness_tracker/models/health_activity_model.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final HealthModelData=HealthDetails();
    return GridView.builder(
      itemCount: HealthModelData.healthDetails.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      crossAxisSpacing:15,
      mainAxisSpacing:12,  
      ),
       itemBuilder:(context,index){
        return CustomCard(child:
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(HealthModelData.healthDetails[index].icon,
            width: 30,
            height: 30,
            fit: BoxFit.cover,
            
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom:4 ),
              child: Text(HealthModelData.healthDetails[index].title,
              style: TextStyle(
                color: secondryColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              ),
            ),
            Text(HealthModelData.healthDetails[index].value,
            style: TextStyle(
              color: greyColor,
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),

            )
          ],
        ));
       });
  }
}