


// final GetIt getIt = GetIt.instance;

// class Helper {
//   static Future<String?> get token async {
//     final storage = getIt.get<SecureStorage>();
//     final token = await storage.readSecureData(kUserToken);
//     if (token != null) return token;
//     return null;
//   }

//   static Future<String> get deviveName async {
//     DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
//     AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
//     return androidInfo.device;
//   }
// }

// Future<void> initializeDependencies() async {
//   getIt
//     ..registerLazySingleton<FlutterSecureStorage>(FlutterSecureStorage.new)
//     ..registerLazySingleton<SecureStorage>(() => SecureStorage(getIt()))
//     //auth
//     ..registerLazySingleton<ApiClient>(() => ApiClient(getIt()))
//     ..registerLazySingleton<Dio>(Dio.new)
//     //auth
//     ..registerLazySingleton<AuthDataSource>(() => AuthDataSource(getIt()))
//     ..registerLazySingleton<AuthRepository>(
//       () => AuthRepository(getIt(), getIt()),
//     );
// }