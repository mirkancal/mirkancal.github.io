import 'package:flutter/material.dart';

class Waves extends StatefulWidget {
  Waves({Key key, this.child});
  final child;
  @override
  _WavesState createState() => _WavesState();
}

class _WavesState extends State<Waves> with SingleTickerProviderStateMixin {
  Animation _animation;
  Animation _colorAnimation;
  AnimationController _controller;

  double val;

  @override
  void initState() {
    super.initState();
    val = 0.0;
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween<double>(
      begin: 0.0,
      end: 2000,
    ).animate(_controller);

    _colorAnimation =
        ColorTween(begin: Colors.blue, end: Colors.amber).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      }
    });

    _controller.addListener(() {
      setState(() {
        val = _animation.value;
      });
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: _Painter(
          controlPoint: val,
          waveColor: _colorAnimation.value,
        ),
        child: widget.child,
      ),
    );
  }
}

class _Painter extends CustomPainter {
  _Painter({this.controlPoint, this.waveColor});
  final controlPoint;
  final waveColor;
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    var wave = Path()
      ..moveTo(0, height)
      ..quadraticBezierTo(
        controlPoint,
        0,
        width,
        height,
      );
    var paint = Paint()..color = waveColor;
    canvas.drawPath(wave, paint);
  }

  @override
  bool shouldRepaint(_Painter oldDelegate) {
    return controlPoint != oldDelegate.controlPoint;
  }
}
