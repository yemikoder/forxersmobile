
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Custom widget for adding inner shadow
class InnerShadow extends SingleChildRenderObjectWidget {
  const InnerShadow({
    Key? key,
    this.blur = 5, // Default blur value for shadow
    this.color = Colors.black38, // Default shadow color
    this.offset = const Offset(50, 50), // Default shadow offset
    Widget? child,
  }) : super(key: key, child: child);

  final double blur; // Amount of blur for the shadow
  final Color color; // Color of the shadow
  final Offset offset; // Offset of the shadow

  @override
  RenderObject createRenderObject(BuildContext context) {
    // Create and return the custom render object
    final renderObject = _RenderInnerShadow();
    updateRenderObject(context, renderObject);
    return renderObject;
  }

  @override
  void updateRenderObject(
      BuildContext context, _RenderInnerShadow renderObject) {
    // Update the render object with the new values of blur, color, and offset
    renderObject
      ..color = color
      ..blur = blur
      ..dx = offset.dx
      ..dy = offset.dy;
  }
}

// Custom render object class for inner shadow effect
class _RenderInnerShadow extends RenderProxyBox {
  double blur = 5; // Default blur for shadow
  Color color = Color(0xFFF15923); // Default color for shadow
  double dx = 5; // Default x-axis translation for shadow
  double dy = 5; // Default y-axis translation for shadow

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) return;

    final Rect rectOuter = offset & size;
    final Rect rectInner = Rect.fromLTWH(
      offset.dx,
      offset.dy,
      size.width - dx,
      size.height - dy,
    );
    final Canvas canvas = context.canvas..saveLayer(rectOuter, Paint());
    context.paintChild(child!, offset);
    final Paint shadowPaint = Paint()
      ..blendMode = BlendMode.srcATop
      ..imageFilter = ImageFilter.blur(sigmaX: blur, sigmaY: blur)
      ..colorFilter = ColorFilter.mode(color, BlendMode.srcOut);

    canvas
      ..saveLayer(rectOuter, shadowPaint)
      ..saveLayer(rectInner, Paint())
      ..translate(dx, dy);
    context.paintChild(child!, offset);
    context.canvas..restore()..restore()..restore();
  }

}