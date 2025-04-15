import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api/api.dart';
import 'app/app.dart';

Future<void> main() async {
  final dio = Dio();

  final apiClient = RestClient(dio);

  runApp(
    AnimeApp(
      client: apiClient,
    ),
  );
}
