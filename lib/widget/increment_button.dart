import 'package:flutter/material.dart';
import 'package:prov5/model/counting_model.dart';
import 'package:provider/provider.dart';



class IncrementButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final CountingModel countingModel = Provider.of<CountingModel>(context);

    return FlatButton.icon(
      icon: Icon(Icons.add, size:32, color: Colors.blue),
      label: Text("ADD"),
      onPressed: () {
        countingModel.increment();
      }
    );

  }
}
