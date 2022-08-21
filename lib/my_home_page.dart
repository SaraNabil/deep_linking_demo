import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();


    initUniLinks();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
  String text = 'First time';

  void initUniLinks() async {
    final initialLink = await getInitialLink();
print(initialLink);
    if(initialLink != null){
      setState(() {
        text =initialLink;
      });
    }
    linkStream.listen((String? link) {
      print('object >>>>>> $link');
      setState(() {
        text = link!;
      });
      // Parse the link and warn the user, if it is not correct
    }, onError: (err) {
      // Handle exception by warning the user their action did not succeed
      print('error >>>>>> ${err.toString()}');
    });
  }
}
