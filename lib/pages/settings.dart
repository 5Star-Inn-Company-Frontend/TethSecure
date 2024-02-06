import 'package:flutter/material.dart';
import 'package:tethsecure/pages/add_identity.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // This list stores boolean values representing the checked state of each ListTile.
  final List<bool> _selectPinLock = List.generate(3, (index) => false);
  final List<bool> _selectUseFingerID = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const AddIdentity()
              )
            );
          }, 
          icon: const Icon(Icons.arrow_back)
          ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('TETHSECURE', style: TextStyle(fontSize: 16.0),),
            Text('Settings', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),),
          ],
        ),
        backgroundColor: const Color.fromRGBO(1, 28, 122, 1),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromRGBO(0, 8, 35, 1),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                CheckboxListTile(
                  value: _selectPinLock[index],
                  onChanged: (value){
                    setState(() {
                      _selectPinLock[index] = value!;
                    });
                  },
                  isThreeLine: true,
                  side: const BorderSide(color: Colors.white),
                  activeColor: Colors.white,
                  checkColor: Colors.black,
                  title: const Text('PIN', style: TextStyle(color: Color.fromRGBO(1, 28, 122, 1))),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('PIN Lock', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
                      Text('Lock the app and require PIN input after idle timeout', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(135, 135, 135, 1))),
                    ],
                  ),
                ),

                const Divider(),
                GestureDetector(
                  onTap: (){},
                  child: const ListTile(
                    title: Text('Change PIN', style: TextStyle(color: Colors.white),),
                  ),
                ),

                const Divider(),
                const ListTile(
                  title: Text('Auto Lock', style: TextStyle(color: Colors.white),),
                  subtitle: Text('1 min', style: TextStyle(color: Color.fromRGBO(135, 135, 135, 1)),),
                ),

                const Divider(),
                CheckboxListTile(
                  value: _selectUseFingerID[index],
                  onChanged: (value){
                    setState(() {
                      _selectUseFingerID[index] = value!;
                    });
                  },
                  isThreeLine: true,
                  side: const BorderSide(color: Colors.white),
                  activeColor: Colors.white,
                  checkColor: Colors.black,
                  title: const Text('BIOMETRICS', style: TextStyle(color: Color.fromRGBO(1, 28, 122, 1))),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Use Fingerprint ID', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
                      Text('Use fingerprint authentication to access the app', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(135, 135, 135, 1))),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}