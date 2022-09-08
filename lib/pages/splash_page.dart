import 'package:flutter/material.dart';
import 'package:flutter_splash/globle/style.dart';
import 'package:flutter_splash/pages/landing_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LandingPage()));
    });
    return Container(
      decoration: const BoxDecoration(
        color: mainColor,
      ),
      child: Stack(
        children: const [
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.terrain,
              size: 90,
              color: Colors.white,
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 80.0),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                    Colors.white,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
