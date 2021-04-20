import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpinKitCubeGrid(
      color: Colors.yellow.shade300,
      size: 50.0,
      duration: Duration(milliseconds: 1800),
    );
  }
}
