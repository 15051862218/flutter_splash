import 'package:flutter/material.dart';

class AppBottomBarItem {
  IconData? icon;
  String label;
  bool isSelected;
  AppBottomBarItem({this.icon, this.label = '', this.isSelected = false});
}
