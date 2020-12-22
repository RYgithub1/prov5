import 'package:flutter/material.dart';
import 'package:prov5/model/counting_model.dart';
import 'package:prov5/widget/decrement_button.dart';
import 'package:prov5/widget/increment_button.dart';
import 'package:provider/provider.dart';



class CounterPage extends StatelessWidget {
  // const CounterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final CountingModel countingModel = Provider.of<CountingModel>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              countingModel.counter.toString(),
              style: TextStyle(fontSize: 44),
            ),
            SizedBox(height:20),
            IncrementButton(),
            SizedBox(height:20),
            DecrementButton(),
          ],
        ),
      ),



    );
  }
}