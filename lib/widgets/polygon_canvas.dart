import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polygon/constants/all.dart';
import 'package:polygon/models/polygon.dart';
import 'package:polygon/providers/providers.dart';
import 'package:polygon/services/canvas_service.dart';

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
        onTapUp: (TapUpDetails details) {
          final newPoint = details.localPosition;

          if (!polygon.isCompleted) {
            ref.read(polygonNotifierProvider.notifier).addPoint(newPoint);
          }
        },
        onVerticalDragStart: (details) => ref
            .read(draggabbleDotNotifierProvider.notifier)
            .updateDot(details.localPosition),
        onHorizontalDragStart: (details) => ref
            .read(draggabbleDotNotifierProvider.notifier)
            .updateDot(details.localPosition),
        onHorizontalDragUpdate: (details) => ref
            .read(polygonNotifierProvider.notifier)
            .updatePoint(details.localPosition),
        onVerticalDragUpdate: (details) => ref
            .read(polygonNotifierProvider.notifier)
            .updatePoint(details.localPosition),
        child: Container(
          decoration: const BoxDecoration(
            color: canvasBackgroundColor,
          ),
          child: CustomPaint(
            painter: PolygonPainter(
              polygon,
              appPaints,
            ),
            child: ProviderScope(
              child: Container(),
            ),
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
