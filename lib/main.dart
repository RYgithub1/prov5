import 'package:flutter/material.dart';
import 'package:prov5/widget/counter_page.dart';
import 'package:prov5/model/counting_model.dart';
import 'package:provider/provider.dart';



void main() {runApp(MyApp());}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // return ChangeNotifierProvider<CountingModel>.value(
    //   notifier: CountingModel(),
    /// [error: older code above]

    // return ChangeNotifierProvider<CountingModel>(
    //   create: (context) => CountingModel(),
    /// [Addional: Make MultiProvider below]

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CountingModel>(
          create: (context) => CountingModel(),
        ),

      ],
      child: MaterialApp(
        title: 'CountingModel',
        theme: ThemeData(primarySwatch: Colors.green),
        home: CounterPage(),
      ),
    );
  }
}
