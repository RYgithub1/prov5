import 'package:flutter/material.dart';
import 'package:prov5/counting_model.dart';
import 'package:provider/provider.dart';



class CounterPage extends StatelessWidget {
  // const CounterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final CountingModel countingModel = Provider.of<CountingModel>(context);

    return Scaffold(
      body: Center(
        child: Text(
          countingModel.counter.toString(),
          style: TextStyle(fontSize: 44),
        ),
      ),



    );
  }
}