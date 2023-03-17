import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Material App'),
        ),
        child: Center(
          child: Text('Ini adalah Cupertino App'),
        ));
  }
}
