import 'package:flutter/material.dart';
import 'package:flutter_splash/model/ListModel.dart';
import 'package:flutter_splash/pages/detail_page.dart';
import 'package:flutter_splash/widgets/app_list_item.dart';

import '../globle/list_data.dart';

class AppList extends StatelessWidget {
  const AppList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            ListModel model = items[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return DetailPage(model.title, model.subTitle, model.bgImg);
                  }));
                },
                child: AppListItem(model.title, model.subTitle, model.bgImg),
              ),
            );
          }),
    );
  }
}
