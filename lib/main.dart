import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(title: Text("Row and Column")),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Center(child: KotakBiruJempol(warna: Colors.red)),
                    ),
                  ),
                  Expanded(
                    child: Center(child: KotakBiruJempol(warna: Colors.red)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Center(child: KotakBiruJempol(warna: Colors.red)),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Center(child: KotakBiruJempol(warna: Colors.red)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KotakBiruJempol extends StatelessWidget {
  final Color warna;
  // final String text;

  const KotakBiruJempol({super.key, required this.warna});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.favorite, color: warna, size: 40),
        SizedBox(height: 8),
        Text("Ini Icon Hati", style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
