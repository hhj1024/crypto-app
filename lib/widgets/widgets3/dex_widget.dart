import 'package:flutter/material.dart';

import 'dex_all.dart';

class DexWidget extends StatefulWidget {
  const DexWidget({ Key? key }) : super(key: key);

  @override
  _DexWidgetState createState() => _DexWidgetState();
}

class _DexWidgetState extends State<DexWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color.fromRGBO(0, 0, 0, 0.4),
          title: Text("Dex Connect",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 14.0),
          ),
          const SizedBox(
            height: 8.0,
          ),
              Container(
                height: 100.0,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                    margin: const EdgeInsets.symmetric(
                        vertical: 7.0, horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 200,
                      margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                       child: ElevatedButton(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/Uniswap.png', width: 30, height: 30,) ,
                         SizedBox(
                           width: 7,
                         ),
                         const Text("Uni Swap",
                         style: TextStyle(fontSize: 18, color: Colors.pink)),
                       ],
                     ),
                     onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return UniSwap();
                            },
                          ),
                          );
                       },
                     style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
               borderRadius: new BorderRadius.circular(9.0),
               ),
               primary: Colors.pink[100] 
               ),                  
                       ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                    margin: const EdgeInsets.symmetric(
                        vertical: 7.0, horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 200,
                      margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                       child: ElevatedButton(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/Sushiswap.png', width: 30, height: 30,) ,
                         SizedBox(
                           width: 8,
                         ),
                         const Text("Sushi Swap",
                         style: TextStyle(fontSize: 18, color: Colors.white)),
                       ],
                     ),
                     onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SushiSwap();
                            },
                          ),
                          );
                       },
                     style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
               borderRadius: new BorderRadius.circular(9.0),
               ),
               primary: Colors.yellow[800] 
               ),
                       ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                    margin: const EdgeInsets.symmetric(
                        vertical: 7.0, horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 200,
                      margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                       child: ElevatedButton(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/Deversifi.png', width: 30, height: 30,) ,
                         SizedBox(
                           width: 12, 
                         ),
                         const Text("DeversiFi",
                         style: TextStyle(fontSize: 18, color: Colors.white)),
                       ],
                     ),
                     onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Deversifi();
                            },
                          ),
                          );
                         },
                style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
                   borderRadius: new BorderRadius.circular(9.0),
                  ),
                   primary: Colors.deepPurple[800] 
                  ),
                       ),
                    ),
                  ],
                ),
              ),
            ],
          ))
      ),
    );
  }
}