import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/meal_details_bloc.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/meal_details_event.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/meal_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MealDetailScreen extends StatefulWidget {
  const MealDetailScreen(this.id, {super.key});
  final String id;

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  late final MealDetailsBloc mealDetailsBloc;
  late final List<String> ingredients;

  @override
  void initState() {
    super.initState();
    mealDetailsBloc = context.read();
    mealDetailsBloc.add(GetMealDetailsEvent(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealDetailsBloc, MealDetailsState>(
      builder: (context, state) {
        if (state.meals == null) {
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        // YoutubePlayerController _controller = YoutubePlayerController(
        //   initialVideoId:
        //       YoutubePlayer.convertUrlToId(
        //         state.meals?.meals[0].strYoutube ?? "",
        //       ) ??
        //       "",
        //   flags: YoutubePlayerFlags(autoPlay: true, mute: false),
        // );
        return Scaffold(
          appBar: AppBar(
            title: Text(
              state.meals!.meals[0].strCategory,
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
                  crossAxisAlignment: .start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(color: Colors.amber),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      children: [
                        Image(image: AssetImage("assets/png/avatar.png")),
                        Expanded(
                          child: Column(
                            children: [
                              Text("@josh-ryan"),
                              Text("Josh Ryan-Chef"),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Following"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Divider(height: 3),
                    SizedBox(height: 25,),
                    Text("Details", style: TextStyle(color: AppColors.redPink, fontSize: 20, fontWeight: FontWeight.w600),),
                    Text(state.meals!.meals[0].strInstructions),
                    SizedBox(height: 25,),
                    Text("Ingredients", style: TextStyle(color: AppColors.redPink, fontSize: 20, fontWeight: FontWeight.w600)),
                    ListView.builder(
                      itemCount: state.meals!.meals[0].strIngredient.length,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Icon(Icons.arrow_right),
                            Text(
                              state.meals!.meals[0].strIngredient[index],
                            ),
                          ],
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
