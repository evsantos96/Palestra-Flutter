import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HomeLayout(),));

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passar ou não?"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.refresh
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('lib/images/estacio_logo.png',height: 150,),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nota Av1"
                ),
              ),
            ),
            new ButtonInseriNota(),
            RaisedButton(
              onPressed: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add),
                  Text("Calcular"),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

class ButtonInseriNota extends StatelessWidget {
  const ButtonInseriNota({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Nota Av2"
        ),
      ),
    );
  }
}