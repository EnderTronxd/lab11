import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'rgb_provider.dart';

class ColorSlider extends StatelessWidget {
  final String label;
  final int value;
  final Function(int) onChanged;

  const ColorSlider({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label: $value', style: Theme.of(context).textTheme.bodyMedium),
        Slider(
          value: value.toDouble(),
          min: 0,
          max: 255,
          onChanged: (newValue) => onChanged(newValue.toInt()),
          activeColor: Colors.deepPurple,
        ),
      ],
    );
  }
}
