

// import 'package:get_it/get_it.dart';

// class IMockClient extends Mock implements Client {}

// final sl = GetIt.I;

// void setup(String ) {
//   sl
//     ..registerLazySingleton<Client>(Client.new)
//     ..registerLazySingleton<ApiClient>(
//       () => ApiClient(sl<Client>()),
//     )
//     ..registerLazySingleton<SignInService>(
//       () => SignInServiceImpl(sl<ApiClient>()),
//     )
//     ..registerLazySingleton<TokenService>(() => TokenService(tHive))
//     ..registerLazySingleton<AuthCubit>(() => AuthCubit(sl<TokenService>()))
//     ..registerFactory<SignInRepo>(() => SignInRepo(sl<SignInService>()))
//     ..registerFactory<SignInCubit>(() => SignInCubit(sl<SignInRepo>()))
//     ..registerLazySingleton<BookService>(
//       () => BookServiceImpl(sl<ApiClient>()),
//     )
//     ..registerFactory<BookRepo>(() => BookRepo(sl<BookService>()))
//     ..registerFactory<HomeCubit>(() => HomeCubit(sl<BookRepo>()));
// }
