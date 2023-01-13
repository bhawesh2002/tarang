import 'package:flutter/material.dart';
import 'package:music_player/pages/home.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MusicPlayer());
}

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  Future<int>? storagePermissionChecker;
  Future<int> checkStoragePermission() async {
    // ignore: unused_local_variable
    var request = await Permission.storage.request();
    final status = await Permission.storage.status;
    int result = 0;
    if (status.isGranted) {
      result = 1;
    } else {
      result = 0;
    }
    return result;
  }

  @override
  void initState() {
    super.initState();
    storagePermissionChecker = (() {
      return checkStoragePermission();
    })();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tarang",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FutureBuilder(
        future: storagePermissionChecker,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              if (snapshot.data == 1) {
                return const MyHomePage();
              } else {
                return Scaffold(
                  body: Center(
                    child: ElevatedButton(
                        onPressed: () {
                          storagePermissionChecker = checkStoragePermission();
                        },
                        child: const Text("Allow storage Permission")),
                  ),
                );
              }
            } else {
              return const Scaffold(
                body: Center(
                  child: Text("Something went wrong"),
                ),
              );
            }
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
