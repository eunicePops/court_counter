import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.yellow),
      home: CourtCounter(title: 'Court Counter App'),
    );
  }
}

class CourtCounter extends StatefulWidget {
  CourtCounter({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  // _CourtCounterState createState() => _CourtCounterState();
  _CourtCounterState createState() => _CourtCounterState();
}

class _CourtCounterState extends State<CourtCounter> {
  int _counter = 0;
  int _counterSecondTeam = 0;

  void _incrementCounterThreePoints() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter =_counter + 3;
    });
  }

  void _incrementCounterTwoPoints() {
    setState(() {
      _counter =_counter + 2;
    });
  }
  void _incrementCounterOnePoint() {
    setState(() {
      _counter ++;
    });
  }

  void _incrementCounterThreePointsSecondTeam() {
    setState(() {
      _counterSecondTeam = _counterSecondTeam + 3;
    });
  }
  void _incrementCounterTwoPointsSecondTeam() {
    setState(() {
      _counterSecondTeam = _counterSecondTeam + 2;
    });
  }

  void _incrementCounterOnePointSecondTeam() {
    setState(() {
      _counterSecondTeam ++;
    });
  }

  void Reset() {
    setState(() {
      _counter = 0;
      _counterSecondTeam = 0;
    });
  }
  Widget ButtonsPoints(){
    return Center(
      child:
      Container(
        width: 180,
        height: 70,
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all(Colors.yellow),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
          ),
          // color: Color(0xffa60000),
          child: Text(
            '3 POINTS',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 22
            ),
          ),
          onPressed: () {
            _incrementCounterThreePoints();
          },
        ),
      ),

    );

  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                child: Text(
                  'AUG 9 PLAYOFFS',
                  style: TextStyle(
                      color: const Color(0xFFE0BF0F),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Expanded(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'LAKERS',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 32),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          '$_counter',
                          style: TextStyle(color: Colors.brown,
                            fontWeight: FontWeight.normal,
                            fontSize: 70
                        ),),
                        SizedBox(height: 20),
                        Container(
                          width: 180,
                          height: 70,
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                            ),
                            // color: Color(0xffa60000),
                            child: Text(
                              '3 POINTS',
                              style: TextStyle(
                                color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 22
                              ),
                            ),
                            onPressed: () {
                              _incrementCounterThreePoints();
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          height: 70,
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                            ),
                            // color: Color(0xffa60000),
                            child: Text(
                              '2 POINTS',
                              style: TextStyle(
                                color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 22
                              ),
                            ),
                            onPressed: () {
                              _incrementCounterTwoPoints();
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          height: 70,
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                            ),
                            // color: Color(0xffa60000),
                            child: Text(
                              'FREE THROW',
                              style: TextStyle(
                                color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 22
                              ),
                            ),
                            onPressed: () {
                              _incrementCounterOnePoint();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 530,
                      child: VerticalDivider(
                        color: Colors.grey,
                        width: 20,
                        thickness: 5,
                      )),
                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'ONTARIO',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 32),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 50),
                        Container(
                          child: Text(
                            '$_counterSecondTeam',
                            style: TextStyle(color: Colors.brown,
                            fontWeight: FontWeight.normal,
                                fontSize: 70),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 180,
                          height: 70,
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                            ),
                            // color: Color(0xffa60000),
                            child: Text(
                              '3 POINTS',
                              style: TextStyle(
                                color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 22
                              ),
                            ),
                            onPressed: (

                                ) {
                              _incrementCounterThreePointsSecondTeam();
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          height: 70,
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                            ),
                            // color: Color(0xffa60000),
                            child: Text(
                              '2 POINTS',
                              style: TextStyle(
                                color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 22
                              ),
                            ),
                            onPressed: () {
                              _incrementCounterTwoPointsSecondTeam();
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          height: 70,
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                            ),
                            // color: Color(0xffa60000),
                            child: Text(
                              'FREE THROW',
                              style: TextStyle(
                                color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 22
                              ),
                            ),
                            onPressed: () {
                              _incrementCounterOnePointSecondTeam();
                            },
                          ),
                        ),



                        /* Container(
                        child: Row(
                          children: [
                            /*Container(
                              child: Image.asset('assets/images/volleyClipArt.jpeg',
                                fit: BoxFit.contain,
                                width: 50,
                              ),
                            ),*/


                          ],
                        ),
                      ),*/
                      ],
                    ),
                  ),
                  SizedBox(height:50),
                ],
              ),
              SizedBox(height:10),
              Container(
                width: 200,
                height: 70,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.yellow),
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                  ),
                  // color: Color(0xffa60000),
                  child: Text(
                    'RESET',
                    style: TextStyle(
                      color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 22
                    ),
                  ),
                  onPressed: () {
                    Reset();
                  },
                ),
              ),
              SizedBox(height:50),
            ],
          ),
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    */
    );
  }
}
