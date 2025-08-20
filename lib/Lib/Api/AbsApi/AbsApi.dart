import 'package:wheatherapp/Lib/ApiModels/ApiResponse.dart';

abstract class Api{
  Future<dynamic> get(String location);
  // post(){};
  // put(){};
  // patch(){};
  // delete(){};
}