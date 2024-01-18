import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

int tabIndex = 4;
String text1 = "Artist";
String text2 = "Ariana Grande";
String text3 = "62,354,659 Monthly listeners";

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 260,
            flexibleSpace: FlexibleSpaceBar(
              title: RichText(
                text: WidgetSpan(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        text2,
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        text3,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              background: Image.asset(
                "assets/images/img.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 30,
              (context, index) {
                return SizedBox(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 2,
                        )),
                    child: ListTile(
                      selected: true,
                      title: Row(
                        children: [
                          Text(
                            "#${(index+1)}",
                            style: TextStyle(color: Colors.white70),
                          ),
                          Image.asset(
                            "assets/images/img.png",
                            width: 50,
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Positions"),
                                Text(""),

                              ],
                            ),
                          )
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
