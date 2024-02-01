import 'package:flutter/material.dart';
import 'package:tethsecure/components/button.dart';
import 'package:tethsecure/pages/add_identity.dart';

class TokenPage extends StatelessWidget {
  const TokenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TETHSECURE'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromRGBO(1, 28, 122, 1),
      ),
      backgroundColor: const Color.fromRGBO(0, 8, 35, 1),
      body: Center(
        child: SizedBox(
          height: 239,
          width: 342,
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(1, 28, 122, 1),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Column(
              children: [
                const SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Image.asset(
                        'assets/ques_mark.png'
                      )
                    ),
                    const SizedBox(width: 30,),
                    const Text(
                      'Select your Option',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
                
                const SizedBox(height: 30,),
                ButtonComp(
                  text: 'Active Token',
                  onPressed: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddIdentity()
                      )
                    );
                  }
                ),
                const SizedBox(height: 20,),
                ButtonComp(
                  text: 'Register Token',
                  onPressed: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddIdentity()
                      )
                    );
                  }
                ),
              ],
            ),
          ),
        )
      ),

    );
  }
}
