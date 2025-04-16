import 'package:flutter/material.dart';

class DetailRoundedContainer extends StatelessWidget {
  const DetailRoundedContainer({
    super.key,
    this.text,
    this.borderColor,
    this.containerColor,
    this.style,
    this.icon,
    this.horizontalPadding = 10,
    this.verticalPadding = 5,
    this.onTap,
    this.isLicked = false,
  }) : super();

  final String? text;
  final Color? borderColor;
  final Color? containerColor;
  final TextStyle? style;
  final IconData? icon;
  final double horizontalPadding;
  final double verticalPadding;
  final VoidCallback? onTap;
  final bool isLicked;

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onTap,
            child: _roundedContainer(),
          )
        : _roundedContainer();
  }

  Container _roundedContainer() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        color: containerColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          if (icon != null) Icon(icon),
          if (text != null)
            Row(
              children: [
                const SizedBox(width: 5),
                Text(text!, style: style),
              ],
            ),
        ],
      ),
    );
  }
}
