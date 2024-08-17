import 'package:flutter/material.dart';

import '../ui.dart';

class DesignSystemIconButton extends StatelessWidget {
  const DesignSystemIconButton(
      {super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: DesignSystemIcon(icon),
    );
  }
}
