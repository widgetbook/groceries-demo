import 'package:flutter/material.dart';

import '../ui.dart';

class DesignSystemIconButton extends StatefulWidget {
  const DesignSystemIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  _DesignSystemIconButtonState createState() => _DesignSystemIconButtonState();
}

class _DesignSystemIconButtonState extends State<DesignSystemIconButton> {
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
        child: DesignSystemIcon(widget.icon),
      ),
    );
  }
}
