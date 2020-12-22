import 'package:flutter/material.dart';
import 'package:prov5/model/counting_model.dart';
import 'package:provider/provider.dart';



class DecrementButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final CountingModel countingModel = Provider.of<CountingModel>(context);

    return FlatButton.icon(
      icon: Icon(Icons.remove, size:32, color: Colors.red),
      label: Text("REMOVE"),
      onPressed: () {
        countingModel.decrement();
      }
    );

  }
}
