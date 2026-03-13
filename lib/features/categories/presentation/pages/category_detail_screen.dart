import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/image/custom_image.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/features/categories/presentation/argument/category_argument.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/category_details_bloc.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/category_details_event.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/category_details_state.dart';
import 'package:flutter_application_2/router/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CategoryDetailScreen extends StatefulWidget {
  const CategoryDetailScreen(this.argument, {super.key});
  final CategoryArgument argument;

  @override
  State<CategoryDetailScreen> createState() => _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends State<CategoryDetailScreen> {
  late final CategoryDetailsBloc categoryDetailsBloc;

  @override
  void initState() {
    super.initState();
    categoryDetailsBloc = context.read();
    categoryDetailsBloc.add(GetCategoryDetailsEvent(widget.argument.category));
  }

  @override
  Widget build(BuildContext context) {
    print(widget.argument.category);
    final Size size = MediaQuery.of(context).size;
    return BlocBuilder<CategoryDetailsBloc, CategoryDetailsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              state.category,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.redPink,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        itemCount: widget.argument.categories.length,
                        scrollDirection: .horizontal,
                        itemBuilder: (context, index) {
                          return ElevatedButton(
                            onPressed: () {
                              categoryDetailsBloc.add(
                                GetCategoryDetailsEvent(
                                  widget.argument.categories[index].strCategory,
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  widget
                                          .argument
                                          .categories[index]
                                          .strCategory ==
                                      state.category
                                  ? AppColors.redPink
                                  : AppColors.pink,
                            ),
                            child: Text(
                              widget.argument.categories[index].strCategory,
                            ),
                          );
                        },
                      ),
                    ),
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
                          state.meals?.meals[index].strMealThumb ?? "",
                          label: state.meals?.meals[index].strMeal ?? "",
                          onTap: () {
                            context.push(AppRouteName.mealDetailsScreen, extra: state.meals?.meals[index].idMeal);
                          },
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
