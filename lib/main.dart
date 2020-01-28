import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<Items>(
        create: (context) => Items(),
        child: MaterialApp(
          title: 'Provider Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Scaffold(
              appBar: AppBar(
                title: Text('Providers'),
                centerTitle: true,
              ),
              body: Row(
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    height: 500,
                    width: 200,
                    child: Consumer<Items>(
                      builder: (context, items, child) {
                        return RaisedButton(
                          child: Text('Do Something'),
                          onPressed: () {
                            items.doSomething();
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 500,
                    width: 200,
                    child: Consumer<Items> (
                      builder: (context, items, child) {
                        return Text(items.someValue);
                      },
                    ),
                  )
                ],
              )),
        ));
  }
}
