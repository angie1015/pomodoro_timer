import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pomodoro App',
      theme: ThemeData.fallback(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _time=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Pomodoro App'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircularCountDownTimer(
                // Countdown duration in Seconds
                duration: _time,


                // Width of the Countdown Widget
                width: MediaQuery.of(context).size.width / 2,

                // Height of the Countdown Widget
                height: MediaQuery.of(context).size.height / 2,

                // Default Color for Countdown Timer
                color: Colors.white,

                // Filling Color for Countdown Timer
                fillColor: Colors.red,

                // Border Thickness of the Countdown Circle
                strokeWidth: 5.0,

                // Text Style for Countdown Text
                countdownTextStyle: TextStyle(
                    fontSize: 22.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),

                // Count Order i.e forward or reverse, true for reverse and false for forward order
                reverseOrder: true,

              ),
              RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('START',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  ),
                ),
                  onPressed: (){
                    setState(() {
                      _time=1500;
                    });
                  },
              ),

            ],
          ),
      ),
    );
  }

}
