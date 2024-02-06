import 'package:flutter/material.dart';
import 'package:tethsecure/pages/settings.dart';

class DrawerComp extends StatelessWidget {
  const DrawerComp ({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color.fromRGBO(0, 14, 66, 1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 50,
            ),
            ListTile(
              leading: Image.asset(
                'assets/logo.png',
                height: 51.56,
                width: 48,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),),
              iconColor: Colors.white,
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Settings()
                  )
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.cloud_download),
              title: const Text('Version 0.0.1', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),),
              iconColor: Colors.white,
              onTap: (){},
            ),
          ],
        ),
      );
  }
}