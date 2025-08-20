import 'package:wheatherapp/Lib/Api/AbsApi/AbsApi.dart';
import 'package:wheatherapp/Lib/Api/DioApi/DioApi.dart';
import 'package:wheatherapp/Lib/ApiModels/ApiResponse.dart';

class WeatherServices {
  Api api ;
  WeatherServices(this.api);
  // Api api = DioApi();
  Future<dynamic> get(String location)async{
    ApiResponse apiResponse = await api.get(location);
    if(apiResponse.isError){
      return apiResponse.msgError;
    }
    return apiResponse.body;
  }
}