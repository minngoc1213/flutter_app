import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/image/custom_image.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/di/di.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/categories_bloc.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/categories_event.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/categories_state.dart';
import 'package:flutter_application_2/router/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final CategoriesBloc categoriesBloc = sl.get();
  @override
  void initState() {
    super.initState();
    categoriesBloc.add(GetCategoriesEvent());
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: BlocBuilder<CategoriesBloc, CategoriesState>(
          bloc: categoriesBloc,
          builder: (context, state) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: .end,
                  mainAxisSize: .max,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.redPink,
                      ),
                    ),
                    SizedBox(width: size.width * 0.05),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  ],
                ),

                Text("Seafood"),
                Image(image: AssetImage("assets/png/category.png")),
                SizedBox(height: 15.83),
                GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.categories?.categories.length ?? 0,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return CustomImage(
                      state.categories?.categories[index].strCategoryThumb ??
                          "",
                      label:
                          state.categories?.categories[index].strCategory ?? "",
                      onTap: () {
                        context.push(
                          AppRouteName.categoryDetailScreen,
                          extra:
                              state.categories?.categories[index].strCategory,
                        );
                      },
                    );
                  },
                ),
                SizedBox(height: 90),
              ],
            );
          },
        ),
      ),
    );
  }
}
