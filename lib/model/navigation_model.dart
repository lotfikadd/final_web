import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;
  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Dashboard", icon: Icons.insert_chart,),
  NavigationModel(title: "Add new file", icon: Icons.note_add,),
  NavigationModel(title: "favorites", icon: Icons.favorite_border),
  NavigationModel(title: "Search", icon: Icons.search),
  NavigationModel(title: "Settings", icon: Icons.settings),
];