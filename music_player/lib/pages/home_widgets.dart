import 'package:flutter/material.dart';

//playlist
Widget playlist(BuildContext context) {
  return SizedBox(
    height: 200,
    width: MediaQuery.of(context).size.width,
    child: GridView.count(
      scrollDirection: Axis.horizontal,
      crossAxisCount: 1,
      children: List.generate(
        20,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.green,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 70,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(22)),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            child: Icon(Icons.play_arrow),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

//Albums
Widget albums(BuildContext context) {
  return SizedBox(
    height: 200,
    width: MediaQuery.of(context).size.width,
    child: GridView.count(
      scrollDirection: Axis.horizontal,
      crossAxisCount: 1,
      children: List.generate(
        20,
        (index) => Padding(
          padding: const EdgeInsets.all(8),
          child: Material(
            color: Colors.amber,
            shape: const CircleBorder(),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.transparent, shape: BoxShape.circle),
                child: const Center(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

//Singers
Widget singers(BuildContext context) {
  return SizedBox(
    height: 150,
    width: MediaQuery.of(context).size.width,
    child: GridView.count(
      crossAxisCount: 1,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        20,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.pink),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: 22,
                    child: Icon(Icons.play_arrow),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

//Most Played

Widget mostPlayed(BuildContext context) {
  return SizedBox(
    height: 300,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          title: const Text("Most played song"),
          subtitle: const Text("Singer"),
          trailing:
              IconButton(onPressed: () {}, icon: const Icon(Icons.play_arrow)),
        );
      },
    ),
  );
}
