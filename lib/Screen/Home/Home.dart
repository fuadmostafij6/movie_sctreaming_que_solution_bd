


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Bloc/movie_bloc.dart';
import '../../Const/ColorConst.dart';
import '../../Model/HomePageModel.dart';
import 'SingleMovieItem.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColor.scaffoldBg,
        elevation: 0,
        centerTitle: true,
        title:   const Text("BongoFlixBd",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18
          ),
        ),
      ),
      body: blocBody()
    );
  }
}



Widget blocBody() {
  return BlocProvider(
    create: (context) => MovieBloc(
    )..add(LoadMovieEvent()),
    child: BlocBuilder<MovieBloc, MovieState>(
      builder: (context, state) {
        if (state is MovieInitial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is MovieError) {
          return const Center(child:  Text("Error"));
        }
        if (state is MovieLoaded) {
          HomePageModel home = state.movie;
          return
              SingleChildScrollView(
                child: Column(
                  children: [
                    testWidget(catName: 'Drama', data:home.videoStreamingApp!.drama!.data! , context: context, baseUrl: home.videoStreamingApp!.imgVideoUrl!),
                    SizedBox(height: 10,),
                    testWidget(catName: 'Web Series', data:home.videoStreamingApp!.webSeries!.data! , context: context, baseUrl: home.videoStreamingApp!.imgVideoUrl!),
                    SizedBox(height: 10,),
                    testWidget(catName: 'Comedy show', data:home.videoStreamingApp!.comedyShow!.data! , context: context, baseUrl: home.videoStreamingApp!.imgVideoUrl!),
                    SizedBox(height: 10,),
                    testWidget(catName: 'Jokes', data:home.videoStreamingApp!.jokesAndStandUpComedy!.data! , context: context, baseUrl: home.videoStreamingApp!.imgVideoUrl!),
                    SizedBox(height: 10,),
                  ],
                ),
              );
        }

        return Container();
      },
    ),
  );
}





