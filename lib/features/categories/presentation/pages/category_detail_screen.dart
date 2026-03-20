import 'package:flutter/material.dart';
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    itemCount: widget.argument.categories.length,
                    scrollDirection: .horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 19);
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
                          ),
                          height: 30,
                          alignment: .center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color:
                                widget.argument.categories[index].strCategory ==
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
                state.meals == null
                    ? Center(child: CircularProgressIndicator())
                    : GridView.builder(
                        padding: EdgeInsets.symmetric(horizontal: size.width * 0.09),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.meals?.meals.length ?? 0,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: size.width * 0.05,
                          mainAxisSpacing: size.width * 0.08,
                          childAspectRatio: 0.69,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              context.push(
                                AppRouteName.mealDetailsScreen,
                                extra: state.meals?.meals[index].idMeal,
                              );
                              print('-------------');
                              print(state.meals?.meals[index].idMeal);
                            },
                            child: Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 7,
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    border: .all(color: AppColors.sweetPink),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: .end,
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        "${state.meals?.meals[index].strMeal}\n",
                                        maxLines: 2,
                                        style: TextStyle(fontSize: 12, fontWeight: .w400),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "5",
                                            style: TextStyle(
                                              color: AppColors.sweetPink,
                                              fontSize: 12,
                                              fontWeight: .w400
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: AppColors.sweetPink,
                                            size: 12,
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.timer,
                                            color: AppColors.sweetPink,
                                            size: 12,
                                          ),
                                          Text(
                                            "15 min",
                                            style: TextStyle(
                                              color: AppColors.sweetPink,
                                              fontSize: 12,
                                              fontWeight: .w400
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: .circular(18),
                                  child: Image.network(
                                    state.meals?.meals[index].strMealThumb ??
                                        "",
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
