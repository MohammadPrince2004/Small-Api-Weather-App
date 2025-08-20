import 'package:wheatherapp/Lib/GeoLib/GeoLocatorModel.dart';

class GeoResponse {
  bool isError = false;
  String msgError = "";
  String? country;
  String? localCity;
  String? subLocality;
  GeoResponse({this.country,this.localCity,this.subLocality});
}