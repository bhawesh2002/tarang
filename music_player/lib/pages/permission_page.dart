import 'package:flutter/material.dart';
import 'package:music_player/pages/home.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionPage extends StatefulWidget {
  const PermissionPage({super.key});

  @override
  State<PermissionPage> createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPage> {
  Future<int> checkStoragePermission() async {
    // ignore: unused_local_variable
    var request = await Permission.storage.request();
    final status = await Permission.storage.status;
    int result = 0;
    if (status.isGranted) {
      result = 1;
    } else {
      print("object");
      result = 0;
    }
    print(result);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Plaese Grant following permission",
              style: TextStyle(fontSize: 25),
            ),
            TextButton(
              onPressed: checkStoragePermission,
              child: const Text("Storage"),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                },
                icon: const Icon(Icons.check))
          ],
        ),
      ),
    );
  }
}
