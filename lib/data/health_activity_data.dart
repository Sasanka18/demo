import 'package:fitness_tracker/models/health_activity_model.dart';

class HealthDetails {
  final healthDetails =[
    HealthModel(
      icon: 'assets/icons/burn.png',
      value: '230',
      title: 'Water Level',
      ),
      HealthModel(
      icon: 'assets/icons/distance.png',
      value: '340m',
      title: 'Covered Distance',
      ),
      HealthModel(
      icon: 'assets/icons/sleep.png',
      value: '7h 45m',
      title: 'Sleep',
      ),
      HealthModel(
      icon: 'assets/icons/steps.png',
      value: '7.8K',
      title: 'Miles Steps',
      ),
  ];
}