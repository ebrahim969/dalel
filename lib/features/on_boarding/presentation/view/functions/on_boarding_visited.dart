import 'package:dalel_app/core/database/caches/cache_helper.dart';
import 'package:dalel_app/core/services/service_locator.dart';

void onBoardingVisited()
{
  getIt<CachHelper>().saveData(key: "isOnBoardingVisited", value: true);
}