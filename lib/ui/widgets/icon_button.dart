import 'package:flutter/widgets.dart' hide Icon;

import '../ui.dart';

class IconButton extends StatefulWidget {
  const IconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  IconButtonState createState() => IconButtonState();
}

class IconButtonState extends State<IconButton> {
  double _scale = 1;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale = 0.9; // Shrinks the icon slightly
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0; // Restores the icon size
    });
  }

  void _onTapCancel() {
    setState(() {
      _scale = 1.0; // Restores the icon size if the tap is canceled
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        child: Icon(widget.icon),
      ),
    );
  }
}
