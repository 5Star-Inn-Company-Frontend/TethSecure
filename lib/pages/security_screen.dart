import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tethsecure/components/drawer.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  final int _duration = 25;

  // Seurity code for user
  String securityCode = "7938-9081";

  void copy(){
    Clipboard.setData(ClipboardData(text: securityCode)).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Copied to your clipboard!'))
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Image.asset('assets/menu.png'),
        title: const Text('TETHSECURE', style: TextStyle(fontSize: 16),),
        backgroundColor: const Color.fromRGBO(1, 28, 122, 1),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.copy),
            onPressed: () {
              copy();
            },
          ),
        ],
      ),
      drawer: const DrawerComp(),
      backgroundColor: const Color.fromRGBO(0, 8, 35, 1),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 60,),
            Center(
              child: SizedBox(
                width: 300,
                child: Table(
                  border: TableBorder.all(width:2, color: Colors.white), //table border
                  children:  [
                    const TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text("Security Code", textAlign: TextAlign.center, style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500, color: Colors.white),),
                          )
                        ),
                      ]
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                            child:Text(securityCode, textAlign: TextAlign.center, style: const TextStyle(fontSize: 55, fontWeight: FontWeight.w700, color: Colors.white),)
                          )
                        )
                      ]
                    ),
                  ],
                ),
              ),
            ),
        
            const SizedBox(height: 90,),
            CircularCountDownTimer(
              timeFormatterFunction: (defaultFormatterFunction, duration) {
                if (duration.inSeconds == 0) {
                  return "0";
                } else {
                  return Function.apply(defaultFormatterFunction, [duration]);
                }
              },
              // Countdown duration in Seconds.
              duration: _duration,
              // Countdown initial elapsed Duration in Seconds.
              initialDuration: 0,
              width: 121,
              // Height of the Countdown Widget.
              height: 121,
              // Ring Color for Countdown Widget.
              ringColor: const Color.fromRGBO(1, 28, 122, 1),
              // Ring Gradient for Countdown Widget.
              ringGradient: null,
              // Filling Color for Countdown Widget.
              fillColor: Colors.white,
              // Filling Gradient for Countdown Widget.
              fillGradient: null,
              // Background Color for Countdown Widget.
              backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
              // Background Gradient for Countdown Widget.
              backgroundGradient: null,
              // Border Thickness of the Countdown Ring.
              strokeWidth: 20.0,
              // Begin and end contours with a flat edge and no extension.
              strokeCap: StrokeCap.square,
              // Text Style for Countdown Text.
              textStyle: const TextStyle(fontSize: 47, fontWeight: FontWeight.w500, color: Colors.white),
              // Format for the Countdown Text.
              textFormat: CountdownTextFormat.S,
              // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
              isReverse: true,
              // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
              isReverseAnimation: true,
              // Handles visibility of the Countdown Text.
              isTimerTextShown: true,
              // Handles the timer start.
              autoStart: true,
            ),
        
            const SizedBox(height: 15,),
            const Text("LIFTTIME", textAlign: TextAlign.center, style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500, color: Colors.white),),
        
            const SizedBox(height: 50,),
            const Text("Serial Number: 0227489994", textAlign: TextAlign.center, style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500, color: Colors.white),),
        
            const SizedBox(height: 150,),
            const Row(
              children: [
                SizedBox(width: 280,),
                Text("TETHSECURE", style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500, color: Colors.white),),
              ],
            )
          ],
        ),
      ),
    );
  }
}