import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polygon/constants/all.dart';
import 'package:polygon/models/polygon.dart';
import 'package:polygon/providers/polygon_snapshots_provider.dart';
import 'package:polygon/providers/providers.dart';
import 'package:polygon/services/canvas_service.dart';
import 'package:polygon/widgets/buttons/grid_button.dart';
import 'package:polygon/widgets/buttons/undo_redo_button.dart';

class PolygonCanvas extends ConsumerWidget {
  const PolygonCanvas({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var polygon = ref.watch(polygonNotifierProvider);
    var appPaints = AppPaints(
      vertexInnerPaint: ref.read(vertexInnerPaintProvider),
      vertexOuterPaint: ref.read(vertexOuterPaintProvider),
      strokePaint: ref.read(strokePaintProvider),
      gridDotPaint: ref.read(gridDotPaintProvider),
    );

    return SafeArea(
      child: GestureDetector(
        onTapUp: (details) => _onTapUp(context, details, ref),
        onHorizontalDragUpdate: (details) => _onDragUpdate(ref, details),
        onVerticalDragUpdate: (details) => _onDragUpdate(ref, details),
        onHorizontalDragDown: (details) => _onDragDown(ref, details),
        onVerticalDragDown: (details) => (),
        child: Container(
          decoration: const BoxDecoration(
            color: canvasBackgroundColor,
          ),
          child: Stack(
            children: [
              CustomPaint(
                painter: PolygonPainter(
                  polygon,
                  appPaints,
                ),
                child: ProviderScope(
                  child: Container(),
                ),
              ),
              Positioned(
                width: MediaQuery.sizeOf(context).width,
                top: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: UndoRedoButton(
                        redo: _getRedoAction(ref),
                        undo: _getUndoAction(ref),
                      ),
                    ),
                    const GridButton(null),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PolygonPainter extends CustomPainter {
  final AppPaints appPaints;
  final Polygon polygon;

  PolygonPainter(
    this.polygon,
    this.appPaints,
  );

  @override
  bool shouldRepaint(covariant PolygonPainter oldDelegate) => true;

  @override
  void paint(Canvas canvas, Size size) {
    final CanvasService canvasService = CanvasService(
      canvas: canvas,
      polygon: polygon,
      appPaints: appPaints,
    );

    canvasService.repaintCanvas();
  }
}

VoidCallback? _getUndoAction(WidgetRef ref) {
  if (ref.read(polygonSnapshotsNotifierProvider).activeSnapshotIndex >= 0) {
    return ref.read(polygonSnapshotsNotifierProvider.notifier).undo;
  }

  return null;
}

VoidCallback? _getRedoAction(WidgetRef ref) {
  final snapshotsStorage = ref.read(polygonSnapshotsNotifierProvider);
  if (snapshotsStorage.activeSnapshotIndex <
      snapshotsStorage.snapshots.length - 1) {
    return ref.read(polygonSnapshotsNotifierProvider.notifier).redo;
  }

  return null;
}

void _onDragUpdate(WidgetRef ref, DragUpdateDetails details) {
  return ref
      .read(polygonNotifierProvider.notifier)
      .setDraggedPointPosition(details.localPosition);
}

void _onDragDown(WidgetRef ref, DragDownDetails details) {
  final polygon = ref.read(polygonNotifierProvider);
  final polygonSnapshotsNotifier =
      ref.read(polygonSnapshotsNotifierProvider.notifier);
  return polygonSnapshotsNotifier.addSnapshot(polygon);
}

void _onTapUp(BuildContext context, TapUpDetails details, WidgetRef ref) {
  final Polygon polygon = ref.read(polygonNotifierProvider);
  final newPoint = details.localPosition;

  if (!polygon.isCompleted) {
    final (bool success, String message) =
        ref.read(polygonNotifierProvider.notifier).addPoint(newPoint);

    if (!success) {
      _showErrorMessage(message, context);
    }
  }
}

void _showErrorMessage(String message, BuildContext context) {
  final snackBar = SnackBar(
    backgroundColor: Theme.of(context).colorScheme.errorContainer,
    content: Text(
      message,
      style: TextStyle(
        color: Theme.of(context).colorScheme.onErrorContainer,
      ),
    ),
  );

  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
