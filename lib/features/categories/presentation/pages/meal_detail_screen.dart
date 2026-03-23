import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/meal_details_bloc.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/meal_details_event.dart';
import 'package:flutter_application_2/features/categories/presentation/bloc/meal_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MealDetailScreen extends StatefulWidget {
  const MealDetailScreen(this.id, {super.key});
  final String id;

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  late final MealDetailsBloc mealDetailsBloc;
  late final List<String> ingredients;
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();
    mealDetailsBloc = context.read();
    mealDetailsBloc.add(GetMealDetailsEvent(widget.id));
  }

  Future<void> initPlayer() async {
    _controller = YoutubePlayerController(
      initialVideoId:
          YoutubePlayer.convertUrlToId(
            mealDetailsBloc.state.meals?.meals[0].strYoutube ?? "",
          ) ??
          "",
      flags: const YoutubePlayerFlags(
        mute: true,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
      ),
    );
    setState(() {});
  }

  void listener() {}

  @override
  void deactivate() {
    _controller?.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocConsumer<MealDetailsBloc, MealDetailsState>(
      listener: (context, state) {
        if (state.meals != null && _controller == null) {
          initPlayer();
        }
      },
      builder: (context, state) {
        final meal = (state.meals?.meals.isNotEmpty ?? false)
            ? state.meals!.meals.first
            : null;

        return Scaffold(
          appBar: AppBar(
            title: Text(
              meal?.strCategory ?? "",
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
          body: meal == null
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 37),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(18),
                        ),
                        child: YoutubePlayerBuilder(
                          onExitFullScreen: () {
                            SystemChrome.setPreferredOrientations(
                              DeviceOrientation.values,
                            );
                          },
                          player: YoutubePlayer(
                            controller: _controller!,
                            showVideoProgressIndicator: true,
                            progressIndicatorColor: Colors.blueAccent,
                            topActions: <Widget>[
                              const SizedBox(width: 8.0),
                              Expanded(
                                child: Text(
                                  _controller?.metadata.title ?? '',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                  size: 25.0,
                                ),
                                onPressed: () {},
                              ),
                            ],
                            onReady: () {},
                            onEnded: (data) {},
                          ),
                          builder: (BuildContext p1, Widget p2) {
                            return Column(children: [p2]);
                          },
                        ),
                      ),
                      if (_controller != null)
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 7,
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(18),
                              bottomRight: Radius.circular(18),
                            ),
                            color: AppColors.redPink,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  state.meals?.meals[0].strMeal ?? "",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                size: 12,
                                color: AppColors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "4.2",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: .w400,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.comment,
                                size: 12,
                                color: AppColors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "2.273",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: .w400,
                                ),
                              ),
                            ],
                          ),
                        ),

                      const SizedBox(height: 25),
                      Row(
                        children: [
                          const Image(
                            image: AssetImage("assets/png/avatar.png"),
                            width: 61,
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: .start,
                              children: const [
                                Text("@josh-ryan", maxLines: 1),
                                Text("Josh Ryan-Chef", maxLines: 1),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            height: 21,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.pink,
                              ),
                              child: const Text(
                                "Following",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: .w500,
                                  color: AppColors.sweetPink,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert),
                            color: AppColors.redPink,
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      const Divider(height: 3, color: AppColors.redPink),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Text(
                            "Details",
                            style: TextStyle(
                              color: AppColors.redPink,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 15),
                          Icon(Icons.timer, size: 12),
                          Text(
                            "45 min",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Text(meal.strInstructions),
                      const SizedBox(height: 25),
                      Text(
                        "Ingredients",
                        style: TextStyle(
                          color: AppColors.redPink,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ListView.builder(
                        itemCount: meal.strIngredient.length,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              const Icon(Icons.arrow_right),
                              Text(
                                "${meal.strMeasure[index]} ${meal.strIngredient[index]}",
                              ),
                            ],
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
