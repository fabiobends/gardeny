import 'package:flutter/material.dart';
import 'package:gardeny/core/constants/styles.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.onPressed,
    required this.label,
    this.isCTA = true,
  });

  final VoidCallback onPressed;
  final String label;
  final bool isCTA;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: isCTA ? theme.colorScheme.primary : null,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isCTA ? Colors.transparent : theme.colorScheme.primary,
                  width: 1,
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: isCTA
                  ? theme.textTheme.displaySmall?.color
                  : theme.colorScheme.primary,
              padding: kTextPadding,
            ),
            onPressed: () {},
            child: Text(label),
          ),
        ],
      ),
    );
  }
}
