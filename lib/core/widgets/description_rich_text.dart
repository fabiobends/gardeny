import 'package:flutter/material.dart';

class DescriptionRichText extends StatelessWidget {
  const DescriptionRichText({
    super.key,
    required this.maxLines,
    required this.firstText,
    this.secondText,
    required this.thirdText,
    this.shouldShowEllipsis = false,
  });

  final String firstText;
  final String? secondText;
  final String thirdText;

  final int? maxLines;
  final bool shouldShowEllipsis;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return RichText(
      text: TextSpan(
        style: textTheme.bodyLarge,
        children: [
          TextSpan(text: firstText),
          TextSpan(
            text: secondText,
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(text: thirdText)
        ],
      ),
      maxLines: maxLines,
      overflow:
          shouldShowEllipsis ? TextOverflow.ellipsis : TextOverflow.visible,
    );
  }
}
