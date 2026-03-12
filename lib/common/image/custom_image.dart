import 'package:flutter/widgets.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
    this.imageDir, {
    super.key,
    this.boxFit = .cover,
    this.label = '',
  });
  final String imageDir;
  final BoxFit? boxFit;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.network(
            imageDir,
            fit: BoxFit.fill,
          ),
        ),
        Text(label),
      ],
    );
  }
}
