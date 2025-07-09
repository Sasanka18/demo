import 'package:fitness_tracker/models/side_menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final SideMenu=<SideMenul>[
    SideMenul(icon: Icons.home, title: "Dashboard"),
    SideMenul(icon: Icons.person, title: "Profile"),
    SideMenul(icon: Icons.run_circle, title: "Exercise"),
    SideMenul(icon: Icons.settings, title: "Settings"),
    SideMenul(icon: Icons.history, title: "History"),
    SideMenul(icon: Icons.logout, title: "Logout"),
  ];
}