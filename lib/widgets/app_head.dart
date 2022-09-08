import 'package:flutter/material.dart';
import 'package:flutter_splash/globle/style.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://uplaod-189989.oss-cn-hangzhou.aliyuncs.com/avatar.jpg'),
            radius: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Hello Syk",
                  style: titleStyle,
                ),
                Text(
                  "Cood Afternoon",
                  style: summaryStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
