import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class SplashWidget extends StatefulWidget {
  
  @override
  _SplashWidgetState createState() => _SplashWidgetState();

  

}

class _SplashWidgetState extends State<SplashWidget> {
  
  
  Future<LottieComposition> _composition;
  
startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomePage');
  }

 
  @override
  void initState() {
    super.initState();
    startTime();
    _composition = _loadComposition();
  }

  Future<LottieComposition> _loadComposition() async {
    var assetData = await rootBundle.load('assets/math.json');
    return await LottieComposition.fromByteData(assetData);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LottieComposition>(
      future: _composition,
      builder: (context, snapshot) {
        var composition = snapshot.data;
        if (composition != null) {
          return Lottie(composition: composition);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}