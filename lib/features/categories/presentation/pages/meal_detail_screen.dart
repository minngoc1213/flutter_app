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
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
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
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: meal == null
                  ? const Center(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (_controller != null)
                            YoutubePlayerBuilder(
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
                          const SizedBox(height: 25),
                          Row(
                            children: [
                              const Image(
                                image: AssetImage("assets/png/avatar.png"),
                              ),
                              Expanded(
                                child: Column(
                                  children: const [
                                    Text("@josh-ryan"),
                                    Text("Josh Ryan-Chef"),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text("Following"),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          const Divider(height: 3),
                          const SizedBox(height: 25),
                          Text(
                            "Details",
                            style: TextStyle(
                              color: AppColors.redPink,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
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
                                  Text(meal.strIngredient[index]),
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
