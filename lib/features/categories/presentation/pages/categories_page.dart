import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/image/custom_image.dart';
import 'package:flutter_application_2/core/color/app_color.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

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
                Text("Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.redPink),),
                SizedBox(width: size.width * 0.05),
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
            Spacer(),
            Text("Seafood"),
            Image(image: AssetImage("assets/png/category.png")),
            SizedBox(height: 15.83,),
            GridView.builder(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 38.91,
                mainAxisSpacing: 8,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CustomImage(
                  "assets/png/onboarding3_$index.png",
                  label: "Breakfast",
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
