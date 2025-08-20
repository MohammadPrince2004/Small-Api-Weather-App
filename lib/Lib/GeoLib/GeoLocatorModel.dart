import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wheatherapp/Lib/GeoLib/GeoResponse.dart';

class GeoLocatorModel{
  
  GeoLocatorModel();
  Future<GeoResponse> getLoction()async{
    GeoResponse geoResponse = GeoResponse();
    bool isLocation = await Geolocator.isLocationServiceEnabled();
    if(isLocation){
      LocationPermission per = await Geolocator.requestPermission();
      if((per==LocationPermission.always)||(per==LocationPermission.whileInUse)){
        try{
          Position myLocation = await Geolocator.getCurrentPosition();
          List<Placemark> placeMarks =  await placemarkFromCoordinates(myLocation.latitude, myLocation.longitude);
          
  
          geoResponse.country = placeMarks[0].country;
          geoResponse.localCity = placeMarks[0].locality;
          geoResponse.subLocality = placeMarks[0].subAdministrativeArea;
          print(placeMarks[0].country);
          print(placeMarks[0].locality);
          print(placeMarks[0].subAdministrativeArea);
        }catch(e){
          geoResponse.isError = true;
          geoResponse.msgError = e.toString();
        }
      }
    }else{
      geoResponse.isError = true;
      geoResponse.msgError = "Allow The Access To Location !";
    }
    return geoResponse;
  }
  
}