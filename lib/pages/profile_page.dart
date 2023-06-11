import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
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
      body: SingleChildScrollView(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).

            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 30.0, top: 30, left: 20.0),
                    child: ClipOval(
                      child: Image.asset(
                        "images/kedi.jpg",
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          children: const [
                            Text(
                              'Kullanıcı Adı',
                              style: TextStyle(
                                  fontFamily: 'Raleway', fontSize: 21),
                            ),
                            SizedBox(width: 8.0),
                            Padding(
                              padding: EdgeInsets.only(top: 28.0, left: 18.0),
                              child: Icon(
                                Icons.info_outline,
                                size: 22.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 28.0, left: 10.0),
                              child: Icon(
                                Icons.badge_outlined,
                                size: 22.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 28.0, left: 10.0),
                              child: Icon(
                                Icons.verified,
                                size: 22.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 28.0, left: 10.0),
                              child: Icon(
                                Icons.more_vert,
                                size: 22.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 1.0),
                        child: Text(
                          '@kullanıcıadı',
                          style: TextStyle(fontFamily: 'Raleway', fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, left: 15, right: 15),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vehicula ultrices porta. '
                  'Phasellus cursus porta nulla, eget suscipit felis elementum aliquet.',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 13),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 15, right: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 180,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              image: AssetImage('images/kaplan.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                            height:
                                6), // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0, right: 38),
                          child: Text(
                            'Lorem Lorem',
                            style:
                                TextStyle(fontFamily: 'Raleway', fontSize: 16),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 78),
                          child: Text(
                            '10 dakika',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 180,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              image: AssetImage('images/kaplan.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                6), // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0, right: 38),
                          child: Text(
                            'Lorem Lorem',
                            style:
                                TextStyle(fontFamily: 'Raleway', fontSize: 16),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 78),
                          child: Text(
                            '10 dakika',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 15, right: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 180,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              image: AssetImage('images/kaplan2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                            height:
                                6), // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0, right: 38),
                          child: Text(
                            'Lorem Lorem',
                            style:
                                TextStyle(fontFamily: 'Raleway', fontSize: 16),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 78),
                          child: Text(
                            '10 dakika',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 180,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              image: AssetImage('images/kaplan2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                6), // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0, right: 38),
                          child: Text(
                            'Lorem Lorem',
                            style:
                                TextStyle(fontFamily: 'Raleway', fontSize: 16),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 78),
                          child: Text(
                            '10 dakika',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 15, right: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 180,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              image: AssetImage('images/kaplan.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                            height:
                                6), // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0, right: 38),
                          child: Text(
                            'Lorem Lorem',
                            style:
                                TextStyle(fontFamily: 'Raleway', fontSize: 16),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 78),
                          child: Text(
                            '10 dakika',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 19),
                    Column(
                      children: [
                        Container(
                          width: 180,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              image: AssetImage('images/kaplan.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                6), // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0, right: 38),
                          child: Text(
                            'Lorem Lorem',
                            style:
                                TextStyle(fontFamily: 'Raleway', fontSize: 16),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 78),
                          child: Text(
                            '10 dakika',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 15, right: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 180,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              image: AssetImage('images/kaplan2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                            height:
                                6), // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0, right: 38),
                          child: Text(
                            'Lorem Lorem',
                            style:
                                TextStyle(fontFamily: 'Raleway', fontSize: 16),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 78),
                          child: Text(
                            '10 dakika',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 180,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              image: AssetImage('images/kaplan2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                6), // İstenilen boşluğu ayarlamak için SizedBox ekliyoruz
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0, right: 38),
                          child: Text(
                            'Lorem Lorem',
                            style:
                                TextStyle(fontFamily: 'Raleway', fontSize: 16),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 78),
                          child: Text(
                            '10 dakika',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}