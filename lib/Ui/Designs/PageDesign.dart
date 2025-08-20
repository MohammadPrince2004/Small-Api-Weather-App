import 'package:flutter/material.dart';
import 'package:wheatherapp/Ui/Designs/ChosenMeasurand.dart';

class PageDesign extends StatelessWidget {
  List<Widget>? rowData;
  String? countryName;
  String? cityName;

  Widget? child;
  PageDesign({this.rowData, this.child,this.countryName,this.cityName});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(backgroundColor:Colors.black12,title: Text("Header",style:TextStyle(color:Colors.white)),),
        backgroundColor: Colors.black87, 
        body: Column(
          children: [
            SizedBox(height: 50, child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: rowData ?? []),
            )),
            Builder(
              builder: (context) {
                if (countryName == null || cityName == null) {
                  return SizedBox();
                } 
                return Card(
                  color: Colors.transparent,
                  elevation: 0,
                          child: ListTile(
                            tileColor: Colors.transparent,
                            leading: Icon(Icons.location_on_outlined, color: Colors.white),
                            title: Text("${countryName}",style: TextStyle(color: Colors.white),),
                            subtitle: Text("${cityName}",style: TextStyle(color: Colors.white38),),
                          ),
                );
              }
            ),
            Expanded(
              child: Container(
      
                // width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 10,spreadRadius: .1,color: Colors.blueGrey.withAlpha(50))],
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                 
                  color: Colors.grey.shade700.withAlpha(75)
                ),
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadiusGeometry.vertical(
                    top: Radius.circular(50),
                  ),
                  child: child ,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
