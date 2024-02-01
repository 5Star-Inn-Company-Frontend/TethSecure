import 'package:flutter/material.dart';

class AddIdentity extends StatelessWidget {
  const AddIdentity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/menu.png'),
        title: const Text('TETHSECURE'),
        backgroundColor: const Color.fromRGBO(1, 28, 122, 1),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromRGBO(0, 8, 35, 1),
      body: Center(
        child: SizedBox(
          height: 313,
          width: 342,
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(1, 28, 122, 1),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 1,),
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
                        'ADD IDENTITY',
                        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
              
                  SizedBox(
                    width: 301,
                    height: 47,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon:  const Icon(Icons.phone_android),
                        hintText: 'SERIAL NUMBER'
                      ),
                      style: const TextStyle(),
                    ),
                  ),
                  
                  // const SizedBox(height: 20,),
              
                  SizedBox(
                    width: 301,
                    height: 47,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon:  const Icon(Icons.code),
                        hintText: 'ACTIVATION CODE'
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
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        )
                      ),
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/check_mark.png'
                          ),
                          SizedBox(width: 40,),
                          const Text(
                            'ADD IDENTITY',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(0, 8, 35, 1),
                              fontWeight: FontWeight.w800
                            ),
                          ),
                        ],
                      )
                    )
                  ),

                  const Row(
                    children: [
                      const SizedBox(width: 150,),
                      Text(
                        'Click verify to proceed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}