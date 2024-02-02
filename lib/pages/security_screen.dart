import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  // Seurity code for user
  String securityCode = "7938-9081";

  void copy(){
    Clipboard.setData(ClipboardData(text: securityCode)).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Copied to your clipboard !'))
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/menu.png'),
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
      backgroundColor: const Color.fromRGBO(0, 8, 35, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60,),
              Center(
                child: SizedBox(
                  width: 300,
                  child: Table(
                    border: TableBorder.all(width:2, color:Colors.white), //table border
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
            ],
          )
        ),
      ),
    );
  }
}