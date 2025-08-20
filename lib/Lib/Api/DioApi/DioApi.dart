import 'package:dio/dio.dart';
import 'package:wheatherapp/Lib/Api/AbsApi/AbsApi.dart';
import 'package:wheatherapp/Lib/ApiModels/ApiResponse.dart';

class DioApi implements Api {
  Dio dio = Dio(BaseOptions(baseUrl: "http://api.weatherstack.com/current"));

  @override
  get(String location) async {
    ApiResponse apiResponse = ApiResponse();
    try {
      Response response = await dio.get(
        "",
        queryParameters: {
          "access_key": "23c447afd978102952f958c28193791d",
          "query": location,
        },
      );
      // print(response.requestOptions.uri);
      apiResponse.statusCode = response.statusCode;
      apiResponse.body = response.data;
      print(apiResponse.statusCode);
    } catch (e) {
      apiResponse.isError = true;
      apiResponse.msgError = e.toString();
      print(apiResponse.isError);
    }
    print(apiResponse.body);
    
    return apiResponse;
  }
}
