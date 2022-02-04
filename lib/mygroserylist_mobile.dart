import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyGroseryListMobile extends StatelessWidget {
  const MyGroseryListMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Container();
  }
}
