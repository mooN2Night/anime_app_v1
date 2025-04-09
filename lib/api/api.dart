import 'package:dio/dio.dart';
import 'package:new_anime_app/api/models/models.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'https://anilibria.top/api/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @GET('/anime/releases/random')
  Future<AnimeDto> getRandomAnime();
}