import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart';

import 'my_home_page.dart';
import 'package:flutter/services.dart' show PlatformException;

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  await initUniLinks();
  runApp(const MyApp());
}

// String text = '';

Future<void> initUniLinks() async {
  // Platform messages may fail, so we use a try/catch PlatformException.
  try {
    final initialLink = await getInitialLink();
    // Parse the link and warn the user, if it is not correct,
    // but keep in mind it could be `null`.
    // Attach a listener to the stream
    // StreamSubscription  _sub = linkStream.listen((String? link) {
    //   print('object >>>>>> $link');
    //   // setState(() {
    //   //   text = link!;
    //   // });
    //   // Parse the link and warn the user, if it is not correct
    // }, onError: (err) {
    //   // Handle exception by warning the user their action did not succeed
    //   print('error >>>>>> ${err.toString()}');
    // });
  } on PlatformException {
    // Handle exception by warning the user their action did not succeed
    // return?
    print('exception >>>>>>}');
  }}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
