import 'package:flutter/material.dart';
import 'package:music_player/pages/player.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({super.key});

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  var status = 0;
  IconData? playPause = Icons.play_arrow;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Player();
          }));
        },
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(22)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(22)),
                ),
              ),
              SizedBox(
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 20),
                      child: Text(
                        "MySong",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10),
                      child: Text("Singers"),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, right: 2.0),
                    child: Material(
                      color: Colors.blue.shade800,
                      shape: const CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.skip_next,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0, right: 8),
                    child: Material(
                      color: Colors.blue.shade800,
                      shape: const CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        onTap: () {
                          if (status == 1) {
                            setState(() {
                              status = 0;
                              playPause = Icons.pause;
                            });
                          } else {
                            setState(() {
                              status = 1;
                              playPause = Icons.play_arrow;
                            });
                          }
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 30,
                          child: Icon(
                            playPause,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
