import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  var scaffoldkey = GlobalKey<ScaffoldState>();
  late double screenHeight;
  late double screenWidth;
  late double topPadding;
  late double bottomPadding;
  late TabController tabController;

  @override

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    topPadding = screenHeight * 0.04;
    bottomPadding = screenHeight * 0.01;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xff300e46),
          Color(0xff040827)
        ],
      )),
      child: Scaffold(
        key: scaffoldkey,
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(bottom: bottomPadding, top: topPadding),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 715) {
                return desktopView();
              } else {
                return MobileHome();
              }
            },
          ),
        ),
      ),
    );
  }

}

Widget MobileHome() {
  return Container();
}

Widget desktopView() {
  return Container();
}
