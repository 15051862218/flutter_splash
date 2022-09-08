import 'package:flutter/material.dart';
import 'package:flutter_splash/globle/style.dart';

class AppListItem extends StatelessWidget {
  String title;
  String subTitle;
  String bgImg;

  AppListItem(this.title, this.subTitle, this.bgImg, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 250,
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(bgImg),
            fit: BoxFit.cover,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: lightTitleStyle,
          ),
          Text(
            subTitle,
            style: lightSubTitleStyle,
          ),
        ],
      ),
    );
  }
}
