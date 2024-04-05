import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polygon/widgets/polygon_canvas.dart';

void main() {
  debugPrintGestureArenaDiagnostics = false;
  runApp(
    const ProviderScope(
      child: PolygonApp(),
    ),
  );
}

class PolygonApp extends StatelessWidget {
  const PolygonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Polygon drawing tool',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: PolygonCanvas(),
      ),
    );
  }
}
