import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/image/custom_image.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/category_details_bloc.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/category_details_event.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/category_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryDetailScreen extends StatefulWidget {
  const CategoryDetailScreen(this.category, {super.key});
  final String category;

  @override
  State<CategoryDetailScreen> createState() => _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends State<CategoryDetailScreen> {
  late final CategoryDetailsBloc categoryDetailsBloc;

  @override
  void initState() {
    super.initState();
    categoryDetailsBloc = context.read();
    categoryDetailsBloc.add(GetCategoryDetailsEvent(widget.category));
  }

  @override
  Widget build(BuildContext context) {
    print(widget.category);
    final Size size = MediaQuery.of(context).size;
    return BlocBuilder<CategoryDetailsBloc, CategoryDetailsState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: .end,
                      mainAxisSize: .max,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back),
                        ),
                        Text(
                          widget.category,
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
                    Expanded(child: ListView(scrollDirection: .horizontal)),
                    GridView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.meals?.meals.length ?? 0,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.9,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return CustomImage(
                          state.meals?.meals[index].strMealThumb ??
                              "",
                          label:
                              state.meals?.meals[index].strMeal ??
                              "",
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
