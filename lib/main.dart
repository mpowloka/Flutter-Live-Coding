import 'package:flutter/material.dart';
import 'package:flutter_app4/details.dart';
import 'package:flutter_app4/detailsRow.dart';

import 'imte.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final imtes = <Imte>[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(leading: Icon(Icons.home), title: Text("My profile")),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: onFabPressed,
          ),
          body: Column(
            children: <Widget>[
              DetailsRow(
                imageUrl:
                    "https://media.licdn.com/dms/image/C5603AQFknYEJ4AuX_w/profile-displayphoto-shrink_200_200/0?e=1580342400&v=beta&t=ofOQK9_H67h8ZUYCl3iTlkvnJsh4bzPgoX280F3X0ZI",
                upperText: "Michał",
                bottomText: "Powłoka",
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final currentImte = imtes[index];
                    return ListTile(
                      leading: Icon(Icons.explicit),
                      title: Text(currentImte.name),
                      subtitle: Text(currentImte.desc),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ImteDetails(imte: currentImte);
                        }));
                      },
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: imtes.length,
                ),
              )
            ],
          ),
        ));
  }

  void onFabPressed() => setState(() {
        imtes.add(Imte("Imte number: ${imtes.length}", "Some desc"));
      });
}
