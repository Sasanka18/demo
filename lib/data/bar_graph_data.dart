import 'package:fitness_tracker/models/bar_graph_model.dart';
import 'package:fitness_tracker/models/graph_model.dart';
import 'package:flutter/material.dart';

class BarGraphData {
  final data=[
    BarGraphModel(
      label: 'Calories Burned',
      color: Color.fromARGB(255, 90, 128, 154),
      graph: [
        GraphModel(X: 0, Y: 8),
        GraphModel(X: 1, Y: 10),
        GraphModel(X: 2, Y: 7),
        GraphModel(X: 3, Y: 4),
        GraphModel(X: 4, Y: 4),
        GraphModel(X: 5, Y: 6),
      ],
    ),
    // Second set of data
    BarGraphModel(
      label: "Protein",
      color: Color.fromARGB(255, 174, 0, 255),
      graph: [
        GraphModel(X: 0, Y: 8),
        GraphModel(X: 1, Y: 10),
        GraphModel(X: 2, Y: 9),
        GraphModel(X: 3, Y: 6),
        GraphModel(X: 4, Y: 6),
        GraphModel(X: 5, Y: 7),
      ],
    ),

    // Third set of data
    BarGraphModel(
      label: "Carbs Intake",
      color: Color.fromARGB(255, 3, 247, 178),
      graph: [
        GraphModel(X: 0, Y: 7),
        GraphModel(X: 1, Y: 10),
        GraphModel(X: 2, Y: 7),
        GraphModel(X: 3, Y: 4),
        GraphModel(X: 4, Y: 4),
        GraphModel(X: 5, Y: 10),
      ],
    ),
    
      ];
      
  final lable=['M','T','W','T','F','S'];
}