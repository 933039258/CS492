import 'package:flutter/material.dart';

import './app.dart';

class Journal extends StatelessWidget{
  static final routeName = 'journal';
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Notice the Back Button in the App Bar\n'
                    'We get this for free!\n'
                    'Managed by the Navigator.\n',
          style: Theme.of(context).textTheme.headline)
        )
      );
  }
}
  
  
