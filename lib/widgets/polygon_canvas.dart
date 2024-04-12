import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polygon/constants/all.dart';
import 'package:polygon/models/grid_metadata.dart';
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
    final polygon = ref.watch(polygonNotifierProvider);
    final gridMetadata = ref.watch(gridMetadataNotifierProvider(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
    ));

    final appPaints = AppPaints(
      vertexInnerPaint: ref.read(vertexInnerPaintProvider),
      vertexOuterPaint: ref.read(vertexOuterPaintProvider),
      strokePaint: ref.read(strokePaintProvider),
      gridDotPaint: ref.read(gridDotPaintProvider),
    );

    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: canvasBackgroundColor,
        ),
        child: Stack(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTapUp: (details) => _onTapUp(
                context,
                details,
                ref,
                gridMetadata,
              ),
              onHorizontalDragUpdate: (details) => _onDragUpdate(ref, details),
              onVerticalDragUpdate: (details) => _onDragUpdate(ref, details),
              onHorizontalDragEnd: (details) => ref
                  .read(polygonNotifierProvider.notifier)
                  .postDraggingUpdate(),
              onVerticalDragEnd: (details) => ref
                  .read(polygonNotifierProvider.notifier)
                  .postDraggingUpdate(),
              child: CustomPaint(
                painter: PolygonPainter(
                  polygon: polygon,
                  appPaints: appPaints,
                  gridMetadata: gridMetadata,
                ),
                child: ProviderScope(
                  child: Container(),
                ),
              ),
            ),
            Positioned(
              width: MediaQuery.sizeOf(context).width,
              top: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UndoRedoButton(
                      redo: _getRedoAction(ref),
                      undo: _getUndoAction(ref),
                    ),
                    GridButton(
                      attachMode: polygon.attachedToGrid,
                      onPressed: () => ref
                          .read(polygonNotifierProvider.notifier)
                          .toggleAttachMode(gridMetadata.generatedDots),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PolygonPainter extends CustomPainter {
  final AppPaints appPaints;
  final Polygon polygon;
  final GridMetadata gridMetadata;

  PolygonPainter({
    required this.polygon,
    required this.appPaints,
    required this.gridMetadata,
  });

  @override
  bool shouldRepaint(covariant PolygonPainter oldDelegate) => true;

  @override
  void paint(Canvas canvas, Size size) {
    final CanvasService canvasService = CanvasService(
      canvas: canvas,
      polygon: polygon,
      appPaints: appPaints,
      gridMetadata: gridMetadata,
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

void _onTapUp(
  BuildContext context,
  TapUpDetails details,
  WidgetRef ref,
  GridMetadata defaultGridMetadata,
) {
  final Polygon polygon = ref.read(polygonNotifierProvider);
  final newPoint = details.localPosition;

  if (!polygon.isCompleted) {
    final (bool success, String message) = ref
        .read(polygonNotifierProvider.notifier)
        .addPoint(newPoint, defaultGridMetadata.generatedDots);

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
