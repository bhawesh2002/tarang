import 'package:flutter/material.dart';
import 'package:music_player/pages/player_widgets.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  double _value = 0.0;
  var status = 0;
  IconData? playPause = Icons.play_arrow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //Now Playing
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20),
          child: SizedBox(
            child: Row(
              children: [
                //Now Playing Dialogue
                const Icon(
                  Icons.play_arrow,
                  size: 15,
                  color: Colors.grey,
                ),
                const Text(
                  "   Now Playing",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                //Drop Down button(Expi player)
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //Song Name and Playlist Button
        Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 20),
          child: SizedBox(
            child: Row(
              children: [
                //Song Name
                const SizedBox(
                  width: 330,
                  child: Text(
                    "Song Name",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                //Playlist
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.playlist_play),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //Singer's name
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Singers",
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ),
        //Song Details Grid
        //imported from pages/palyer_widgets.dart
        detailsGrid(context),
        //Slider
        Slider(
          value: _value,
          onChanged: ((value) {
            setState(() {
              _value = value;
            });
          }),
        ),
        //Action Buttons
        SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //skip_previous
              Material(
                shape: const CircleBorder(),
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.skip_previous,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              //play_arrow
              Material(
                color: Colors.blue.shade700,
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
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        playPause,
                        size: 50,
                        color: Colors.white,
                      )),
                ),
              ),
              //skip_next
              Material(
                shape: const CircleBorder(),
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.skip_next,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //Remaining Buttons
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shuffle),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.repeat),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.circle),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.graphic_eq),
            ),
          ],
        ))
      ],
    ));
  }
}
