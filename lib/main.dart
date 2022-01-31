// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Task 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Container(
            //   height: 100,
            //   width: 390,
            //   child: SvgPicture.asset('assets/images/flutter.svg'),
            // ),
            // Container(
            //   height: 100,
            //   width: 390,
            //   child: SvgPicture.network('https://cdn.worldvectorlogo.com/logos/flutter.svg'),
            // ),
            CarouselSlider(
              options: CarouselOptions(height: 390.0),
              items: ['assets/images/flutter.svg','assets/images/flutter.svg','assets/images/flutter.svg'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: 100,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: SvgPicture.asset(i),
                    );
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
