import 'package:dalel_app/core/database/caches/cache_helper.dart';
import 'package:dalel_app/features/auth/presentation/cubits/cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator()
{
  getIt.registerSingleton<CachHelper>(CachHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}