import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:favoritos_youtube/api.dart';
import 'package:favoritos_youtube/blocs/favotire_bloc.dart';
import 'package:favoritos_youtube/blocs/videos_bloc.dart';
import 'package:favoritos_youtube/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  Api api = Api();

  api.search("electro");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: VideosBloc(),
        child: BlocProvider(
          bloc: FavoriteBloc(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: Home(),
          ),
        ));
  }
}
