import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_anime_app/repositories/profile/collection_count/collection_count_repository_interface.dart';

class CollectionCountRepository implements CollectionCountRepositoryI {
  CollectionCountRepository();

  final dio = Dio();

  final sessionToken =
      'eyJpdiI6ImtVdDlhV3dKQ3N6RU40RVNCTG4vaEE9PSIsInZhbHVlIjoiTUtaVG5Id3hkS0g3YXpGWDVJblZHOGVISnowR3phQm5Fckx5WjhqeTlQTGczbDhNUkRVVUUvRFVtRGVoWWtCNiIsIm1hYyI6Ijg1YmMwYmFjNmU2YjFhY2Q0YmEwYTYxZWVlOTdmOWYwYmYyZDM0ZGE0NGIyMTNlZWY1ODcyMzFmYTM4NDY1NDYiLCJ0YWciOiIifQ==';

  @override
  Future fetchCollectionCount() async {
    try {
      final response = await dio.get(
        'https://anilibria.top/api/v1/accounts/users/me/collections/ids',
        options: Options(
          headers: {
            'Cookie': 'ANILIBRIA_API_SESSION=$sessionToken',
          },
        ),
      );

      if (response.statusCode == 200 && response.data is List) {
        final List<dynamic> rawData = response.data;

        final Map<String, int> statusCounts = {};

        for (final item in rawData) {
          if (item is List && item.length == 2) {
            final status = item[1];
            if (status is String) {
              statusCounts[status] = (statusCounts[status] ?? 0) + 1;
            }
          }
        }

        // 🖨️ Печатаем
        debugPrint("📊 Статистика:");
        debugPrint("Запланировано: ${statusCounts["PLANNED"] ?? 0}");
        debugPrint("Смотрю: ${statusCounts["WATCHING"] ?? 0}");
        debugPrint("Просмотрено: ${statusCounts["WATCHED"] ?? 0}");
        debugPrint("Отложено: ${statusCounts["POSTPONED"] ?? 0}");
        debugPrint("Брошено: ${statusCounts["ABANDONED"] ?? 0}");
      } else {
        debugPrint("❌ Неверный формат данных от сервера");
      }
    } catch (e) {
      debugPrint("❗ Ошибка при получении данных: $e");
    }
  }
}
