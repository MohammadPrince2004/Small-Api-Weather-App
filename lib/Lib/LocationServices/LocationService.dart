import 'package:wheatherapp/Lib/GeoLib/GeoLocatorModel.dart';
import 'package:wheatherapp/Lib/GeoLib/GeoResponse.dart';

class LocationService {
  GeoLocatorModel geoLocator = GeoLocatorModel();
  getMyLocation() async {
    GeoResponse geoResponse = await geoLocator.getLoction();
    if (geoResponse.isError) {
      // print(isError);
      return geoResponse.msgError;
    }
    print(geoResponse.subLocality);
    return {
      "country": geoResponse.country,
      "locality": geoResponse.localCity,
      "sublocality": geoResponse.subLocality,
      

    };
  }
}
