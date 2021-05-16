import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomepagePage extends StatefulWidget {
  final String title;
  const HomepagePage({Key? key, this.title = 'HomepagePage'}) : super(key: key);
  @override
  HomepagePageState createState() => HomepagePageState();
}

class HomepagePageState extends State<HomepagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.purple,
            height: 300,
            width: Size.infinite.width,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Home Page",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0AD570)),
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: Center(
              child: InkWell(
                  onTap: () {
                    Modular.to.pushNamed('/todos');
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFF06cecf), Color(0x99059d9d)],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      "Todo List",
                      style: TextStyle(color: Colors.purple, fontSize: 14),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
