import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double iconsSize = 40.0;
    final TextStyle textStyle = new TextStyle(
      color: Colors.cyan,
      fontSize: 30.0,
    );
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        //Usar todo el ancho de la pantalla
        title: new Text("Stateteles Widget"),
      ),
      body: new Container(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              new MyCard(
                  title: new Text(
                    "I love flutter",
                    style: textStyle,
                  ),
                  icon: new Icon(
                    Icons.favorite,
                    size: iconsSize,
                    color: Colors.redAccent,
                  )
              ),
              new MyCard(
                  title: new Text("I love this video",
                    style: textStyle,
                  ),
                  icon: new Icon(
                    Icons.thumb_up,
                    size: iconsSize,
                    color: Colors.blueAccent,
                  )
              ),
              new MyCard(
                  title: new Text("Next video",
                    style: textStyle,
                  ),
                  icon: new Icon(
                    Icons.queue_play_next,
                    size: iconsSize,
                    color: Colors.red,
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class MyCard extends StatelessWidget {

  final Widget title;
  final Widget icon;

  const MyCard({required this.title , required this.icon});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(
              20.0
          ),
          child: Column(
            children: [
              this.title,
              this.icon
            ],
          ),
        ),
      ),
    );
  }
}
