import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto15/services/prefs_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.wait([PrefsService.isAuth(), Future.delayed(Duration(seconds: 3))])
        .then((value) => value[0]
            ? Navigator.of(context).pushReplacementNamed('/homepage')
            : Navigator.of(context).pushReplacementNamed('/loginpage'));
    //Future.delayed(Duration(seconds: 3))
    //   .then((_) => Navigator.of(context).pushReplacementNamed('/loginpage'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade700,
      child: Center(
          child: CircularProgressIndicator(
        color: Colors.white54,
      )),
    );
  }
}
