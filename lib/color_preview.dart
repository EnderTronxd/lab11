import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'rgb_provider.dart';

class ColorPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final rgbProvider = Provider.of<RGBProvider>(context);

    return Center(
      child: Container(
        width: 150,
        height: 150,
        color: rgbProvider.currentColor, // Встановлює колір контейнера
      ),
    );
  }
}