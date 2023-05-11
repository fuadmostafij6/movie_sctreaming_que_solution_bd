


import 'package:flutter/material.dart';

import '../Const/ColorConst.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColor.scaffoldBg,
        elevation: 0,
        centerTitle: true,
        title:   Text("BongoFlixBd",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18
          ),
        ),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
