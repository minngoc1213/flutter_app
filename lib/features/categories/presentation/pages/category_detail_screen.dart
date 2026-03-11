import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/color/app_color.dart';

class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen(this.category, {super.key});
  final String category;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: .end,
              mainAxisSize: .max,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                Text(category, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.redPink),),
                SizedBox(width: size.width * 0.05),
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
