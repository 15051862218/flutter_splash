import 'package:flutter/material.dart';
import 'package:flutter_splash/globle/style.dart';

class DetailPage extends StatelessWidget {
  String title;
  String subTitle;
  String bgImg;

  DetailPage(this.title, this.subTitle, this.bgImg, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, //底部NavigationBar透明
      extendBodyBehindAppBar: true, //顶部Bar透明
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Icon(
          Icons.terrain,
          color: Colors.white,
          size: 40,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.pending,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(bgImg), fit: BoxFit.cover),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 300,
                  ),
                  Text(title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      )),
                  Text(subTitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(
                          width: 1.0,
                        ),
                        left: BorderSide(
                          width: 1.0,
                        ),
                        right: BorderSide(
                          width: 1.0,
                        ),
                        bottom: BorderSide(
                          width: 1.0,
                        ),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Java",
                        style: titleStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "6.0",
                        style: summaryStyle,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(
                          width: 1.0,
                        ),
                        left: BorderSide(
                          width: 1.0,
                        ),
                        right: BorderSide(
                          width: 1.0,
                        ),
                        bottom: BorderSide(
                          width: 1.0,
                        ),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Vue",
                        style: titleStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "3.0",
                        style: summaryStyle,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(
                          width: 1.0,
                        ),
                        left: BorderSide(
                          width: 1.0,
                        ),
                        right: BorderSide(
                          width: 1.0,
                        ),
                        bottom: BorderSide(
                          width: 1.0,
                        ),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Flutter",
                        style: titleStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "3.3",
                        style: summaryStyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '这是文字描述',
                  style: titleStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '软文行业便捷的在线软文新闻稿发布平台，平台上汇集了上千网站编辑和一手媒体资源，服务内容类涵盖新闻源发布、自媒体发布、软文代写等多种互联网广告渠道。',
                  style: tipStyle,
                )
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Back Home',
                    style: lightTitleStyle,
                  ),
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.tune,
                  color: mainColor,
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
