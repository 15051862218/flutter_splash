import 'package:flutter/material.dart';
import 'package:flutter_splash/globle/icon_data.dart';
import 'package:flutter_splash/model/list_icon_model.dart';

class IconPage extends StatelessWidget {
  const IconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          ListIcon list = iconItems[index];
          return Padding(
            padding: const EdgeInsets.all(60.0),
            child: Container(
              width: 50,
              height: 50,
              child: Column(
                children: [
                  Icon(list.icon),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(list.message)
                ],
              ),
            ),
          );
        });
  }
}
