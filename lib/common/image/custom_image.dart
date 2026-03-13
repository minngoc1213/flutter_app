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
            child: Container(
              decoration: BoxDecoration(borderRadius: .circular(10),color: Colors.blue),
              child: Image.network(
                imageDir,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Text(label, overflow: TextOverflow.ellipsis, maxLines: 1,),
        ],
      ),
    );
  }
}
