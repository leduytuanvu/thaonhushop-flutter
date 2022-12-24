import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:thaonhushop_flutter/app/core/language/translation_controller.dart';
import 'package:thaonhushop_flutter/app/core/theme/theme_controller.dart';

import '../../data/network/api/authentication_api.dart';
import '../../data/network/dio/dio_client.dart';
import '../../data/repositories/authentication_repository.dart';

final getIt = GetIt.instance;

Future<void> setUpDependencyInjection() async {
  getIt.registerSingleton(ThemeController());
  getIt.registerSingleton(TranslationController());
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));
  getIt.registerSingleton(AuthenticationApi(dioClient: getIt<DioClient>()));
  getIt.registerSingleton(
    AuththenticationRepository(
      authenticationApi: getIt.get<AuthenticationApi>(),
    ),
  );
}
