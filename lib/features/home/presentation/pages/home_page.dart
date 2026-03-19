import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/custom_app_bar/custom_app_bar.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/di/di.dart';
import 'package:flutter_application_2/features/categories/presentation/argument/category_argument.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/categories_bloc.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/categories_event.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/categories_state.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/meal_details_bloc.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/meal_details_event.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/meal_details_state.dart';
import 'package:flutter_application_2/router/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CategoriesBloc categoriesBloc = sl.get();
  final MealDetailsBloc trendingMealBloc = sl.get();
  final MealDetailsBloc yourMealBloc = sl.get();
  @override
  void initState() {
    super.initState();
    categoriesBloc.add(GetCategoriesEvent());
    trendingMealBloc.add(GetRandomMealEvent());
    yourMealBloc.add(GetRandomMealEvent());
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar(
        greeting: 'Hi! Diane',
        subtitle: 'What are you cooking today',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            spacing: 19,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    SizedBox(height: 19),
                    BlocBuilder<CategoriesBloc, CategoriesState>(
                      bloc: categoriesBloc,
                      builder: (context, state) {
                        return SizedBox(
                          height: 40,
                          child: state.categories != null
                              ? ListView.separated(
                                  itemCount:
                                      state.categories?.categories.length ?? 0,
                                  scrollDirection: .horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(width: 19);
                                  },
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        context.push(
                                          AppRouteName.categoryDetailScreen,
                                          extra: CategoryArgument(
                                            category:
                                                state
                                                    .categories
                                                    ?.categories[index]
                                                    .strCategory ??
                                                "",
                                            categories:
                                                state.categories?.categories ??
                                                [],
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
                                          borderRadius: BorderRadius.circular(
                                            18,
                                          ),
                                          color: AppColors.transparent,
                                        ),
                                        child: Text(
                                          state
                                                  .categories
                                                  ?.categories[index]
                                                  .strCategory ??
                                              "",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.redPink,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                )
                              : SizedBox(),
                        );
                      },
                    ),
                    SizedBox(height: 19),
                    BlocBuilder<MealDetailsBloc, MealDetailsState>(
                      bloc: trendingMealBloc,
                      builder: (context, state) {
                        if (state.meals == null) {
                          return Center(child: CircularProgressIndicator());
                        }
                        return Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              "Trending Recipe",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.redPink,
                              ),
                            ),
                            SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                context.push(
                                  AppRouteName.mealDetailsScreen,
                                  extra: state.meals?.meals[0].idMeal,
                                );
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    height: 205,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 7,
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: .all(color: AppColors.sweetPink),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: .end,
                                      // crossAxisAlignment: .start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: .spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                state.meals?.meals[0].strMeal ??
                                                    "",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                            Icon(
                                              Icons.timer,
                                              color: AppColors.sweetPink,
                                            ),
                                            Text(
                                              "30 min",
                                              style: TextStyle(
                                                color: AppColors.sweetPink,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: .spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                state
                                                        .meals
                                                        ?.meals[0]
                                                        .strInstructions ??
                                                    "",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "5",
                                              style: TextStyle(
                                                color: AppColors.sweetPink,
                                              ),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: AppColors.sweetPink,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: .circular(15),
                                    child: SizedBox(
                                      height: 143,
                                      width: size.width,
                                      child: Image.network(
                                        state.meals?.meals[0].strMealThumb ??
                                            "",
                                        fit: .fitWidth,
                                        height: 169,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              BlocBuilder<MealDetailsBloc, MealDetailsState>(
                bloc: yourMealBloc,
                builder: (context, state) {
                  return Card(
                    color: AppColors.redPink,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 38,
                        vertical: 14,
                      ),
                      child: Column(
                        crossAxisAlignment: .start,
                        spacing: 9,
                        children: [
                          Text(
                            "Your Recipes",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 190,
                            width: size.width,
                            child: state.meals != null
                                ? ListView.separated(
                                    itemCount: 4,
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) =>
                                        SizedBox(width: 25),
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          context.push(
                                            AppRouteName.mealDetailsScreen,
                                            extra: state.meals?.meals[0].idMeal,
                                          );
                                        },
                                        child: Stack(
                                          alignment: .bottomCenter,
                                          children: [
                                            ClipRRect(
                                              borderRadius: .circular(18),
                                              child: Container(
                                                height: 190,
                                                width: 162,
                                                alignment: .topCenter,
                                                child: Image.network(
                                                  state
                                                          .meals
                                                          ?.meals[0]
                                                          .strMealThumb ??
                                                      "",
                                                  fit: .fitWidth,
                                                  // height: 200,
                                                  // width: 162,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                                color: AppColors.white,
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 15,
                                              ),
                                              width: 162,
                                              height: 45,
                                              child: Column(
                                                mainAxisAlignment: .end,
                                                crossAxisAlignment: .start,
                                                children: [
                                                  Text(
                                                    state
                                                            .meals
                                                            ?.meals[0]
                                                            .strMeal ??
                                                        "",
                                                    maxLines: 1,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "5",
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .sweetPink,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            AppColors.sweetPink,
                                                      ),
                                                      Spacer(),
                                                      Icon(
                                                        Icons.timer,
                                                        color:
                                                            AppColors.sweetPink,
                                                      ),
                                                      Text(
                                                        "15 min",
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .sweetPink,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  )
                                : Container(),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Top Chef",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.redPink,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 190,
                      width: size.width,
                      child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 25),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(8),
                                child: Image.network(
                                  "https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg",
                                  fit: .cover,
                                  height: 74,
                                  width: 82,
                                ),
                              ),
                              Text("Andrew"),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
