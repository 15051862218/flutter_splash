import 'package:flutter/material.dart';
import 'package:flutter_splash/globle/style.dart';

import '../model/app_bottom_baritem.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  List<AppBottomBarItem> barItems = [
    AppBottomBarItem(icon: Icons.home, label: 'Home', isSelected: true),
    AppBottomBarItem(icon: Icons.explore, label: 'Explore', isSelected: false),
    AppBottomBarItem(
        icon: Icons.turned_in_not, label: 'Tag', isSelected: false),
    AppBottomBarItem(
        icon: Icons.person_outline, label: 'Profile', isSelected: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset.zero,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(barItems.length, (index) {
          AppBottomBarItem currentItem = barItems[index];
          Widget barItemWidget;
          if (currentItem.isSelected) {
            barItemWidget = Container(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(
                    currentItem.icon,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    currentItem.label,
                    style: bottomItemStyle,
                  )
                ],
              ),
            );
          } else {
            barItemWidget = IconButton(
                icon: Icon(
                  currentItem.icon,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    for (var item in barItems) {
                      item.isSelected = item == currentItem;
                    }
                  });
                });
          }
          return barItemWidget;
        }),
      ),
    );
  }
}
