import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'rgb_provider.dart';
import 'color_slider.dart';
import 'color_preview.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RGBProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RGB Color Picker',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 18),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rgbProvider = Provider.of<RGBProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorPreview(),
            const SizedBox(height: 20),
            ColorSlider(
              label: 'Red',
              value: rgbProvider.red,
              onChanged: rgbProvider.updateRed,
            ),
            ColorSlider(
              label: 'Green',
              value: rgbProvider.green,
              onChanged: rgbProvider.updateGreen,
            ),
            ColorSlider(
              label: 'Blue',
              value: rgbProvider.blue,
              onChanged: rgbProvider.updateBlue,
            ),
          ],
        ),
      ),
    );
  }
}
