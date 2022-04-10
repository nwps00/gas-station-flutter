import 'package:flutter/material.dart';
import 'package:project22/stationModel.dart';

class stationDetails extends StatefulWidget {
  final stationModel stations;

  const stationDetails({
    Key? key,
    required this.stations,
  }) : super(key: key);

  @override
  _StationDetailState createState() {
    return _StationDetailState();
  }
}

class _StationDetailState extends State<stationDetails> {
  // int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.stations.name),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.stations.imgName),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.stations.name,
              style: const TextStyle(fontSize: 18),
            ),
            // TODO: Add Expanded
            // 7
            // Expanded(
            //   // 8
            //   child: ListView.builder(
            //     padding: const EdgeInsets.all(7.0),
            //     itemCount: widget.stations.ingredients.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       final ingredient = widget.stations.ingredients[index];
            //       // 9
            //       // TODO: Add ingredient.quantity
            //       return Text('${ingredient.quantity * _sliderVal} '
            //           '${ingredient.measure} '
            //           '${ingredient.name}');
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
