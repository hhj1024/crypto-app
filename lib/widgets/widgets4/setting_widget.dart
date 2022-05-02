import 'package:flutter/material.dart';

class SettingWidget extends StatefulWidget {
  
  const SettingWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: Colors.black12,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color.fromRGBO(0, 0, 0,0.4),
        title:  Text("Setting",
                style: TextStyle(
                  fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        ),
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: 
                Text(
                  "General",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
                      Container(
                        height: 60.0,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 25.0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                             Text(
                  "Fiat Currency",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Spacer(),
                Text(
                  "USD",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                child: 
                Text(
                  "Security",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
                          Container(
                            height: 60.0,
                            width: double.infinity,
                            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 25.0),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:[
                                Text(
                  "Biometric Authentication",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Spacer(),
                Text(
                  "OFF",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60.0,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 25.0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Text(
                  "Update PIN",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Spacer(),
                Text(
                  "Click",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                child: 
                Text(
                  "Legal",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
                          Container(
                            height: 60.0,
                            width: double.infinity,
                            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 25.0),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text(
                  "Terms of Service",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Spacer(),
                Text(
                  "Click",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60.0,
                            width: double.infinity,
                            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 25.0),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Spacer(),
                Text(
                  "Click",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                   ], 
                ),
        ],
      ),
      ),        
      ),      
      );
  }
}
