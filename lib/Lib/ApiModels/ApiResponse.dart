class ApiResponse {
  Map? body;
  int? statusCode;
  bool isError=false;
  String? msgError="";
  ApiResponse({this.body,this.statusCode});
}