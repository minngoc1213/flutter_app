import 'package:flutter/material.dart';

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
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(18),
              child: Image.network(
                imageDir,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(height: 6,),
          Text(label, overflow: TextOverflow.ellipsis, maxLines: 1, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}
