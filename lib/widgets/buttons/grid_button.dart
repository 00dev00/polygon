import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  const GridButton({
    required this.attachMode,
    required this.onPressed,
    super.key,
  });

  final VoidCallback onPressed;
  final bool attachMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: const Icon(Icons.grid_3x3),
        color: attachMode ? Colors.lightGreen[500] : Colors.black,
        onPressed: onPressed,
      ),
    );
  }
}
