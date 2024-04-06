import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  const GridButton(
    this.onPressed, {
    super.key,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.grid_3x3,
          size: 30,
        ),
      ),
    );
  }
}
