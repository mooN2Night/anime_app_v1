import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_anime_app/api/api.dart';
import 'package:brotli/brotli.dart';

import '../../api/models/models.dart';
import 'discover.dart';

class DiscoverRepository implements DiscoverRepositoryI {
  DiscoverRepository({required this.client});

  final RestClient client;

  @override
  Future<List<AnimeDto>> fetchRandomAnime() async {
    return await client.getRandomAnime();
  }

  @override
  Future<AnimeDtoData> fetchNewEpisodes(int animeCount) async {
    return await client.getNewEpisodes(animeCount);
  }

  @override
  Future<ScheduleNowDto> fetchNowSchedule() async {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://anilibria.top/api/v1',
        responseType: ResponseType.bytes,
        headers: {
          'Accept-Encoding': 'br',
        },
      ),
    );

    try {
      final response = await dio.get('/anime/schedule/now');

      if (response.statusCode != 200) {
        throw Exception('Сервер вернул ошибку: ${response.data}');
      }
      final data = response.data;

      final decompressed = brotli.decodeToString(data);

      final jsonData = jsonDecode(decompressed);

      return ScheduleNowDto.fromJson(jsonData);
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception('Ошибка запроса: ${e.response?.data}');
      } else {
        throw Exception('Ошибка без ответа от сервера: ${e.response?.data}');
      }
    } catch (e) {
      throw Exception('Другая ошибка: $e');
    }
  }
}
