import 'package:dio/dio.dart';

import '../model/joke_model.dart';

class JokeRepository {
  final Dio dio = Dio();


  Future<JokeModel> getJoke() async {
    final response = await dio.get('https://v2.jokeapi.dev/joke/Any?');

    final joke = JokeModel.fromJson(response.data);

    return joke;
  }
}
