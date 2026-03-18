import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/custom_app_bar/custom_app_bar.dart';
import 'package:flutter_application_2/common/image/custom_image.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/di/di.dart';
import 'package:flutter_application_2/features/categories/presentation/argument/category_argument.dart';
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
    return Scaffold(
      appBar: CustomAppBar(title: 'Categories', centerTitle: true),

      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: SingleChildScrollView(
            child: BlocBuilder<CategoriesBloc, CategoriesState>(
              bloc: categoriesBloc,
              builder: (context, state) {
                if (state.categories == null) {
                  return Center(child: CircularProgressIndicator());
                }
                return Column(
                  children: [
                    if (state.first != null) ...[
                      Text(
                        state.first?.strCategory ?? "",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: .circular(18),
                        child: Image.network(
                          state.first?.strCategoryThumb ?? "",
                          height: 150,
                          fit: .fill,
                        ),
                      ),
                    ],
                    SizedBox(height: 15.83),
                    GridView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.categories?.categories.length ?? 0,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 38,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.9,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return CustomImage(
                          state
                                  .categories
                                  ?.categories[index]
                                  .strCategoryThumb ??
                              "",
                          label:
                              state.categories?.categories[index].strCategory ??
                              "",
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
                                categories: state.categories?.categories ?? [],
                              ),
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
        ),
      ),
    );
  }
}
