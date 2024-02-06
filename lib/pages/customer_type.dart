import 'package:flutter/material.dart';
import 'package:tethsecure/components/drawer.dart';
import 'package:tethsecure/pages/security_screen.dart';

class CustomerType extends StatefulWidget {
  const CustomerType({super.key});

  @override
  State<CustomerType> createState() => _CustomerTypeState();
}

class _CustomerTypeState extends State<CustomerType> {
  String _selectedText = 'Customer Number';
  int _selectedValue = 0;


  activationCode() {
    showGeneralDialog(
      context: context, 
      barrierDismissible: false,
      barrierColor: Colors.transparent,
      // barrierLabel: ' Full Screen Dialog',
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Scaffold(
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0.76),
          body: Center(
            child: Container(
              width: 430,
              height: 254,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(1, 28, 122, 0.59)
              ),
              child: Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40,),
                    const Text(
                      'Activation code has been sent to your registered \nphone number. Proceed to activate your token',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                
                    const SizedBox(height: 30,),
                    SizedBox(
                      height: 38,
                      width: 370,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(left: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          )
                        ),
                        onPressed: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SecurityScreen()
                            )
                          );
                        },
                        child: const Text(
                          'Activate Token',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(0, 8, 35, 1),
                            fontWeight: FontWeight.w700
                          ),
                        )
                      )
                    ),
                
                    const SizedBox(height: 25,),
                    SizedBox(
                      height: 38,
                      width: 370,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(left: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          )
                        ),
                        onPressed: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SecurityScreen()
                            )
                          );
                        },
                        child: const Text(
                          'Send SMS',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(0, 8, 35, 1),
                            fontWeight: FontWeight.w700
                          ),
                        )
                      )
                    ),
                
                
                    
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }

// Activation code has been sent to your registered phone number. Proceed to activate your token

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Image.asset('assets/menu.png'),
        title: const Text('TETHSECURE', style: TextStyle(fontSize: 16),),
        backgroundColor: const Color.fromRGBO(1, 28, 122, 1),
        foregroundColor: Colors.white,
      ),
      drawer: const DrawerComp(),
      backgroundColor: const Color.fromRGBO(0, 8, 35, 1),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              height: 371,
              width: 342,
              child: Container(
                padding: const EdgeInsets.only(bottom: 20, left: 25),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 14, 66, 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 1,),
                    Row(
                      children: [
                        Image.asset('assets/ques_mark.png'),
                        const SizedBox(width: 30,),
                        const Text(
                          'Choose Customer Type',
                          style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                
                    // const SizedBox(height: 20,),
                
                    // checkboxes
                    Container(
                      width: 292,
                      height: 105,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromRGBO(255, 255, 255, 1), width: 1),
                        borderRadius: const BorderRadius.all(Radius.circular(3))
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.white,
                                value: 0,
                                groupValue: _selectedValue,
                                onChanged: (int? value) {
                                  setState(() {
                                    _selectedValue = value!;
                                    _selectedText = 'Customer number';
                                  });
                                },
                              ),
                              const Text('Individual Customer', style: TextStyle(color: Colors.white, fontSize: 16),),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.white,
                                value: 1,
                                groupValue: _selectedValue,
                                onChanged: (int? value) {
                                  setState(() {
                                    _selectedValue = value!;
                                    _selectedText = 'Username';
                                  });
                                },
                              ),
                              const Text('Corporate Customer', style: TextStyle(color: Colors.white, fontSize: 16),),
                            ],
                          ),
                        ],
                      ),
                    ),
                
                    
                    const SizedBox(height: 5,),
                    Text('Supply $_selectedText', style: const TextStyle(color: Colors.white, fontSize: 16)),
                
                
                    // Textfield
                    Container(
                      width: 301,
                      height: 47,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(43),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: _selectedText,
                          ),
                        ),
                      ),
                    ),
                
                                    
                    // const SizedBox(height: 20,),
                    // Button
                    SizedBox(
                      height: 47,
                      width: 301,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(left: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          )
                        ),
                        onPressed: (){activationCode();},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'VALIDATE',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(0, 8, 35, 1),
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(width: 70,),
                            Icon(Icons.arrow_right, size: 40, color: Colors.black,)
                            
                          ],
                        )
                      )
                    ),
                  ],
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
}