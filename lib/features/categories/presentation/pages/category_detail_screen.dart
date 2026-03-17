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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      itemCount: widget.argument.categories.length,
                      scrollDirection: .horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 10);
                      },
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            categoryDetailsBloc.add(
                              GetCategoryDetailsEvent(
                                widget.argument.categories[index].strCategory,
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 5,
                            ),
                            alignment: .center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:
                                  widget
                                          .argument
                                          .categories[index]
                                          .strCategory ==
                                      state.category
                                  ? AppColors.redPink
                                  : AppColors.transparent,
                            ),
                            child: Text(
                              widget.argument.categories[index].strCategory,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color:
                                    widget
                                            .argument
                                            .categories[index]
                                            .strCategory ==
                                        state.category
                                    ? AppColors.white
                                    : AppColors.redPink,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 26),
                  GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 37),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.meals?.meals.length ?? 0,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 50,
                      childAspectRatio: 0.9,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      // return CustomImage(
                      //   state.meals?.meals[index].strMealThumb ?? "",
                      //   label: state.meals?.meals[index].strMeal ?? "",
                      //   boxFit: .cover,
                      //   onTap: () {
                      //     context.push(
                      //       AppRouteName.mealDetailsScreen,
                      //       extra: state.meals?.meals[index].idMeal,
                      //     );
                      //     print('-------------');
                      //     print(state.meals?.meals[index].idMeal);
                      //   },
                      // );
                      return Column(
                        children: [
                          Image.network(state.meals?.meals[index].strMealThumb ?? "", fit: .fitHeight, height: 169,),
                          Container(
                            child: Column(
                              children: [
                                Text(state.meals?.meals[index].strMeal ?? ""),
                                Row(children: [
                                  Text("5"),
                                  Icon(Icons.star),
                                  Spacer(),
                                  Icon(Icons.timer),
                                  Text("15 min")
                                ],)
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
