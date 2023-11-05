import 'package:shared_preferences/shared_preferences.dart';

class CachHelper
{
 static late SharedPreferences sharedPrefrences;

  // The inithialize of cache

  init() async
  {
     sharedPrefrences = await SharedPreferences.getInstance(); 
  }

  // put data in local date base

  String? getDataString({required String key})
  {
    return sharedPrefrences.getString(key);
  }

  // put data in local date base

  Future<bool> saveData({required String key, required dynamic value})
  {
    if(value is  bool)
    {
      return sharedPrefrences.setBool(key, value);
    }
    if(value is String)
    {
      return sharedPrefrences.setString(key, value);
    }
    if(value is int)
    {
      return sharedPrefrences.setInt(key, value);
    }
    else
    {
      return sharedPrefrences.setDouble(key, value);
    }
  }

  // get date that already saved in database

  dynamic getData({required String key})
  {
    return sharedPrefrences.get(key);
  }

  // remove using specifie key

  Future<bool> removeSpecifieData({required String key}) async
  {
     return await sharedPrefrences.remove(key);
  } 

  // check if local database contains(key)

  Future<bool> containsKey({required String key}) async
  {
    return sharedPrefrences.containsKey(key);
  }

  // clear all data in local data base

  Future<bool> clearData() async
  {
    return await sharedPrefrences.clear();
  }


}

