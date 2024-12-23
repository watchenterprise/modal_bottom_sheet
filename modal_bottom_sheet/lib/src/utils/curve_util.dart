import 'package:flutter/widgets.dart';

class _CurveAdapter extends Curve2D {
  _CurveAdapter(this.c);

  final Curve c;

  @override
  Offset transformInternal(double t) {
    return Offset(c.transform(t), t);
  }
}

double findCurveInverse(Curve curve, double x) {
  final a = _CurveAdapter(curve);
  final t = a.findInverse(x);

  return t;
}
