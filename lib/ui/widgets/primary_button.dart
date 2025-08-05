import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ui.dart';

enum _PrimaryButtonState {
  enabled,
  pressed,
  disabled,
}

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    super.key,
    required this.content,
    required this.onPressed,
    this.enabled = true,
    this.leading,
  });

  final String content;
  final VoidCallback? onPressed;
  final bool enabled;
  final Widget? leading;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonStateImpl();
}

class _PrimaryButtonStateImpl extends State<PrimaryButton> {
  _PrimaryButtonState _currentState = _PrimaryButtonState.enabled;

  void _onTapDown(TapDownDetails details) {
    if (widget.enabled && widget.onPressed != null) {
      setState(() {
        _currentState = _PrimaryButtonState.pressed;
      });
    }
  }

  void _onTapUp(TapUpDetails details) {
    if (widget.enabled && widget.onPressed != null) {
      setState(() {
        _currentState = _PrimaryButtonState.enabled;
      });
    }
  }

  void _onTapCancel() {
    if (widget.enabled && widget.onPressed != null) {
      setState(() {
        _currentState = _PrimaryButtonState.enabled;
      });
    }
  }

  void _onTap() {
    if (widget.enabled && widget.onPressed != null) {
      widget.onPressed!();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    
    // Determine current state
    final currentState = !widget.enabled 
        ? _PrimaryButtonState.disabled 
        : _currentState;

    // Get colors based on state
    final backgroundColor = switch (currentState) {
      _PrimaryButtonState.enabled => theme.background.brand,
      _PrimaryButtonState.pressed => theme.background.brand,
      _PrimaryButtonState.disabled => DesignSystemColor.primary.shade600,
    };

    final textColor = switch (currentState) {
      _PrimaryButtonState.enabled => theme.text.inverse,
      _PrimaryButtonState.pressed => theme.text.inverse,
      _PrimaryButtonState.disabled => DesignSystemColor.grey.shade400,
    };

    return GestureDetector(
      onTap: _onTap,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.l,
          vertical: theme.spacing.sm,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(9999),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.leading != null) ...[
              widget.leading!,
              SizedBox(width: theme.spacing.xs),
            ],
            Text(
              widget.content,
              style: theme.typography.label.copyWith(
                color: textColor,
              ),
            ),
            SizedBox(width: theme.spacing.xs),
            FaIcon(
              FontAwesomeIcons.arrowRight,
              size: 20,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}