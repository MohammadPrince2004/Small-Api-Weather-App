import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheatherapp/Lib/ApiModels/FullModel.dart';
import 'package:wheatherapp/Lib/weatherservices.dart/WeatherServices.dart';
import 'package:wheatherapp/Ui/Designs/ChosenMeasurand.dart';
import 'package:wheatherapp/Ui/Designs/PageDesign.dart';

class HomePage extends StatefulWidget {
  final Map locationData;
  HomePage(this.locationData);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late String location = widget.locationData!['locality'];
  late String? location = widget.locationData['sublocality'];

  late FullModel fullModel;
  List titles = [
    "Temperature",
    "Humidity",
    "Wind Speed",
    "Pressure",
    "Visibility",
  ];
  @override
  Widget build(BuildContext context) {
    print(location);
    print(Map);
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: context.read<WeatherServices>().get(location!),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              print(1);

              return PageDesign(
                rowData: [
                  Icon(Icons.sunny, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Weather App",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
                child: Center(
                  child: CircularProgressIndicator(color: Colors.white),
                ),
              );
            }
            print(2);
            FullModel fullModel = FullModel.fromJson(snapshot.data);
            return PageDesign(
              countryName: snapshot.data['location']['country'],
              cityName: snapshot.data['location']['name'],
              rowData: [
                Icon(Icons.sunny, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  "Weather App",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          width: double.infinity,
                          height: 200,
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Units Of Measurands",textAlign: TextAlign.left,style: TextStyle(fontSize:17,fontWeight: FontWeight.bold)),
                                Divider(),
                               Text("Temp in Celsius ( °C ) ",textAlign: TextAlign.left,style: TextStyle(fontSize:13,fontWeight: FontWeight.w300)),
                                SizedBox(height: 10),
                                Text("Humidity in Percentage ( % )",textAlign: TextAlign.left,style: TextStyle(fontSize:13,fontWeight: FontWeight.w300)),
                                SizedBox(height: 10),
                                Text("Wind Speed in Kilometers per hour (km/h)",textAlign: TextAlign.left,style: TextStyle(fontSize:13,fontWeight: FontWeight.w300)),
                                SizedBox(height: 10),
                                Text("Pressure in Hectopascals ( hPa )",textAlign: TextAlign.left,style: TextStyle(fontSize:13,fontWeight: FontWeight.w300)),
                                SizedBox(height: 10),
                                Text("Visibility in Kilometers ( km )",textAlign: TextAlign.left,style: TextStyle(fontSize:13,fontWeight: FontWeight.w300)),
                                SizedBox(height: 20),
                                Align(
                                  alignment: Alignment.center,
                                  child:Text("Programmed By Elprince",textAlign: TextAlign.center,style: TextStyle(color: Colors.black54),),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.info_outline, color: Colors.white),
                ),
              ],
              child: ListView(
                children: [
                  SizedBox(height: 25),

                  // Text("${snapshot.data}"),
                  // Card(
                  //   child: ListTile(
                  //     leading: Icon(Icons.location_on_outlined),
                  //     title: Text("${snapshot.data['location']['country']}"),
                  //     subtitle: Text("${snapshot.data['location']['name']}"),
                  //   ),
                  // ),
                  ...List.generate(
                    5,
                    (index) => ChoosenMeasurand(
                      width: 100,
                      img: "assets/images/${index + 1}.jpg",
                      title: titles[index],
                      data:
                          snapshot
                              .data['current'][(titles[index] == "Wind Speed"
                                      ? "wind_speed"
                                      : titles[index])
                                  .toLowerCase()]
                              ?.toString() ??
                          "N/A",
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        // child: PageDesign(
        //      countryName: "Egypt",
        //       cityName: "Cairo",
        //       rowData: [
        //         Icon(Icons.sunny, color: Colors.white),
        //         SizedBox(width: 10),
        //         Text(
        //           "Weather App",
        //           style: TextStyle(color: Colors.white, fontSize: 20),
        //         ),
        //       ],
        //       child: ListView(
        //         children: [
        //           SizedBox(height: 25),

        //           ...List.generate(
        //             5,
        //             (index) => ChoosenMeasurand(
        //               width: 100,
        //               img: "assets/images/${index+1}.jpg",
        //               title: titles[index],
        //               data:
        //                   ("1223"),
        //             ),
        //           ),
        //         ],
        //       ),
        // )
      ),
    );
  }
}
