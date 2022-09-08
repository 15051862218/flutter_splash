import 'package:flutter/material.dart';
import 'package:flutter_splash/globle/style.dart';
import 'package:flutter_splash/widgets/app_bottom_bar_widget.dart';
import 'package:flutter_splash/widgets/app_head.dart';
import 'package:flutter_splash/widgets/app_list_widget.dart';
import 'package:flutter_splash/widgets/app_search_widget.dart';
import 'package:flutter_splash/widgets/icons_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Center(
            child: Icon(
              Icons.terrain,
              size: 32,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.share,
              ),
            ),
          ],
          iconTheme: const IconThemeData(
            color: mainColor,
          ),
        ),
        drawer: const Drawer(),
        body: Column(
          children: const [
            AppHeader(),
            AppSearch(),
            AppList(),
            Expanded(child: IconPage()),
            AppBottomBar(),
          ],
        ));
  }
}
