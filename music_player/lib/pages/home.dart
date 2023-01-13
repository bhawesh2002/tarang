import 'package:flutter/material.dart';
import 'package:music_player/pages/home_widgets.dart';
import 'package:music_player/pages/mini_player.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 120,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 200,
                    child: Center(
                      child: Text(
                        "Tarang",
                        style:
                            TextStyle(fontSize: 50, fontFamily: 'GreatVibes'),
                      ),
                    ),
                  ),
                  //Playlists
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Palylists",
                            style: TextStyle(fontSize: 22, color: Colors.grey),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward),
                          color: Colors.grey,
                          splashRadius: 22,
                        ),
                      )
                    ],
                  ),
                  playlist(context),
                  //Albums
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Albums",
                            style: TextStyle(fontSize: 22, color: Colors.grey),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward),
                          color: Colors.grey,
                          splashRadius: 22,
                        ),
                      ),
                    ],
                  ),
                  albums(context),
                  //Singers
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Singers",
                            style: TextStyle(fontSize: 22, color: Colors.grey),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward),
                          color: Colors.grey,
                          splashRadius: 22,
                        ),
                      ),
                    ],
                  ),
                  singers(context),
                  //Most Played
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Most Played",
                        style: TextStyle(fontSize: 22, color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Mini Player
          const Expanded(
              child:
                  Align(alignment: Alignment.bottomCenter, child: MiniPlayer()))
        ],
      ),
    );
  }
}
