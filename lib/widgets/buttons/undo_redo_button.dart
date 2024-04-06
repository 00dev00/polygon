import 'package:flutter/material.dart';

class UndoRedoButton extends StatelessWidget {
  const UndoRedoButton({
    super.key,
    required this.undo,
    required this.redo,
  });

  final VoidCallback? undo;
  final VoidCallback? redo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.undo),
            onPressed: undo,
          ),
          const Text(
            "|",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.redo),
            onPressed: redo,
          ),
        ],
      ),
    );
  }
}
