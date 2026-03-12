import 'package:flutter/widgets.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
    this.imageDir, {
    super.key,
    this.boxFit = .cover,
    this.label = '',
    this.onTap
  });
  final String imageDir;
  final BoxFit? boxFit;
  final String label;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              imageDir,
              fit: BoxFit.fill,
            ),
          ),
          Text(label, overflow: TextOverflow.ellipsis, maxLines: 1,),
        ],
      ),
    );
  }
}
