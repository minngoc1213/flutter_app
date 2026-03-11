import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/dot_navigation_bar/dot_navigation_bar_item.dart';

class NavigationBarContent extends StatelessWidget {
  const NavigationBarContent({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.curve,
    required this.duration,
    required this.selectedItemColor,
    required this.theme,
    required this.unselectedItemColor,
    required this.onTap,
    required this.itemPadding,
    required this.dotIndicatorColor,
    required this.enablePaddingAnimation,
    this.splashBorderRadius,
    this.splashColor,
  });

  final List<DotNavigationBarItem> items;
  final int currentIndex;
  final Curve curve;
  final Duration duration;
  final Color? selectedItemColor;
  final ThemeData theme;
  final Color? unselectedItemColor;
  final Function(int index) onTap;
  final EdgeInsets itemPadding;
  final Color? dotIndicatorColor;
  final bool enablePaddingAnimation;
  final Color? splashColor;
  final double? splashBorderRadius;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (final item in items)
          Material(
            color: Color.lerp(Colors.transparent, Colors.transparent, 0),
            borderRadius: BorderRadius.circular(splashBorderRadius ?? 8),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () => onTap.call(items.indexOf(item)),

              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: Row(children: [item.icon]),
              ),
            ),
          ),
      ],
    );
  }
}
