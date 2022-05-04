import 'package:flutter/cupertino.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({Key? key, required this.path}) : super(key: key);

  final String path;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[Image.asset(path)],
    );
  }
}
