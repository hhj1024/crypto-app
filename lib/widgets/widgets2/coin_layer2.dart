import 'package:flutter/material.dart';

class Layer2 extends StatelessWidget {

  const Layer2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    TextTheme textStyle = Theme.of(context).textTheme;

    return 
          Column(
            children: [
              Container(
                    height: 140.0,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    margin: const EdgeInsets.symmetric(
                    vertical: 7.0, horizontal: 25.0),
                    decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    borderRadius: BorderRadius.circular(16.0),
                              ),
                    child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children:[
                  Container(
                       padding: const EdgeInsets.only(left: 1.0, right: 1.0),
                       height: 80.0,
                       width: 130.0,
                       child: Column(
                           children: [
                    Image.asset('assets/images/albitrum.png', width: 18, height: 18,) ,
                    const SizedBox(height: 5.0),
                    Icon(Icons.local_gas_station_rounded,
                    size: 35, color: Colors.white,
                    ),
                    Text(
                      "Albitrum",
                     style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
               ),
               Container(
      child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                  "Optimistic Rollup",
                  style: TextStyle(fontSize: 14, color: Colors.red[400]),
                  ),
                  Text(
                  "Universal",
                  style: TextStyle(fontSize: 14, color: Colors.green[400]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                "TVL : \$ 2.71 B " ,
                style: TextStyle(fontSize: 14, color: Colors.yellow[400]),
              ),
                  Text(
                "avg : \$ 1.88" ,
                style: TextStyle(fontSize: 14, color: Colors.grey[500]),
              ),
                                  ],
                                ),
                        )
                                ],
                              ),       
    ),
    SizedBox(
      height: 10,
    ),
    Container(
                    height: 140.0,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    margin: const EdgeInsets.symmetric(
                    vertical: 7.0, horizontal: 25.0),
                    decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    borderRadius: BorderRadius.circular(16.0),
                              ),
                    child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children:[
                  Container(
                       padding: const EdgeInsets.only(left: 1.0, right: 1.0),
                       height: 80.0,
                       width: 130.0,
                       child: Column(
                           children: [
                    Image.asset('assets/images/dydx.png', width: 18, height: 18,) ,
                    const SizedBox(height: 5.0),
                    Icon(Icons.local_gas_station_rounded,
                    size: 35, color: Colors.white,
                    ),
                    Text(
                      "dydx",
                     style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
               ),
               Container(
      child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
              "ZK Rollup",
              style: TextStyle(fontSize: 14, color: Colors.red[400]),
              ),
              Text(
              "StarkEx",
              style: TextStyle(fontSize: 14, color: Colors.blue[400]),
              ),
              Text(
              "Exchange",
              style: TextStyle(fontSize: 14, color: Colors.green[400]),
              ),
              SizedBox(
                height: 10
              ),
              Text(
            "TVL : \$ 947 M " ,
            style: TextStyle(fontSize: 14, color: Colors.yellow[400]),
          ),
              Text(
            "avg : \$ 0.7" ,
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
                                  ],
                                ),
                        )
                                ],
                              ),       
    ),
    SizedBox(
      height: 10,
    ),
    Container(
                    height: 140.0,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    margin: const EdgeInsets.symmetric(
                    vertical: 7.0, horizontal: 25.0),
                    decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    borderRadius: BorderRadius.circular(16.0),
                              ),
                    child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children:[
                  Container(
                       padding: const EdgeInsets.only(left: 1.0, right: 1.0),
                       height: 80.0,
                       width: 130.0,
                       child: Column(
                           children: [
                    Image.asset('assets/images/metis.png', width: 18, height: 18,) ,
                    const SizedBox(height: 5.0),
                    Icon(Icons.local_gas_station_rounded,
                    size: 35, color: Colors.white,
                    ),
                    Text(
                      "metis",
                     style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
               ),
               Container(
      child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
              "Optimistic Rollup",
              style: TextStyle(fontSize: 14, color: Colors.red[400]),
              ),
              Text(
              "Universal",
              style: TextStyle(fontSize: 14, color: Colors.green[400]),
              ),
              SizedBox(
                height: 10
              ),
              Text(
            "TVL : \$ 486 M " ,
            style: TextStyle(fontSize: 14, color: Colors.yellow[400]),
          ),
              Text(
            "avg : \$ 0.24" ,
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
                                  ],
                                ),
                        )
                                ],
                              ),       
    ),
    SizedBox(
      height: 10,
    ),
    Container(
                    height: 140.0,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    margin: const EdgeInsets.symmetric(
                    vertical: 7.0, horizontal: 25.0),
                    decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    borderRadius: BorderRadius.circular(16.0),
                              ),
                    child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children:[
                  Container(
                       padding: const EdgeInsets.only(left: 1.0, right: 1.0),
                       height: 80.0,
                       width: 130.0,
                       child: Column(
                           children: [
                    Image.asset('assets/images/optimism.png', width: 18, height: 18,) ,
                    const SizedBox(height: 5.0),
                    Icon(Icons.local_gas_station_rounded,
                    size: 35, color: Colors.white,
                    ),
                    Text(
                      "Optimism",
                     style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
               ),
               Container(
      child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
              "Optimistic Rollup",
              style: TextStyle(fontSize: 14, color: Colors.red[400]),
              ),
              Text(
              "Universal",
              style: TextStyle(fontSize: 14, color: Colors.green[400]),
              ),
              SizedBox(
                height: 10
              ),
              Text(
            "TVL : \$ 477 M " ,
            style: TextStyle(fontSize: 14, color: Colors.yellow[400]),
          ),
              Text(
            "avg : \$ 0.94" ,
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
                                  ],
                                ),
                        )
                                ],
                              ),       
    ),
    SizedBox(
      height: 10,
    ),
    Container(
                    height: 140.0,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    margin: const EdgeInsets.symmetric(
                    vertical: 7.0, horizontal: 25.0),
                    decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    borderRadius: BorderRadius.circular(16.0),
                              ),
                    child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children:[
                  Container(
                       padding: const EdgeInsets.only(left: 1.0, right: 1.0),
                       height: 80.0,
                       width: 130.0,
                       child: Column(
                           children: [
                    Image.asset('assets/images/loopring.png', width: 18, height: 18,) ,
                    const SizedBox(height: 5.0),
                    Icon(Icons.local_gas_station_rounded,
                    size: 35, color: Colors.white,
                    ),
                    Text(
                      "LRC",
                     style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
               ),
               Container(
      child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
              "ZK Rollup",
              style: TextStyle(fontSize: 14, color: Colors.red[400]),
              ),
              Text(
              "Exchange",
              style: TextStyle(fontSize: 14, color: Colors.green[400]),
              ),
              SizedBox(
                height: 10
              ),
              Text(
            "TVL : \$ 296 M " ,
            style: TextStyle(fontSize: 14, color: Colors.yellow[400]),
          ),
              Text(
            "avg : \$ 0.33" ,
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
                                  ],
                                ),
                        )
                                ],
                              ),       
    ),
    SizedBox(
      height: 10,
    ),
    Container(
                    height: 140.0,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    margin: const EdgeInsets.symmetric(
                    vertical: 7.0, horizontal: 25.0),
                    decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    borderRadius: BorderRadius.circular(16.0),
                              ),
                    child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children:[
                  Container(
                       padding: const EdgeInsets.only(left: 1.0, right: 1.0),
                       height: 80.0,
                       width: 130.0,
                       child: Column(
                           children: [
                    Image.asset('assets/images/bobanetwork.png', width: 18, height: 18,) ,
                    const SizedBox(height: 5.0),
                    Icon(Icons.local_gas_station_rounded,
                    size: 35, color: Colors.white,
                    ),
                    Text(
                      "Boba Network",
                     style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
               ),
               Container(
      child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
              "Optimistic Rollup",
              style: TextStyle(fontSize: 14, color: Colors.red[400]),
              ),
              Text(
              "Payments, Exchange",
              style: TextStyle(fontSize: 14, color: Colors.green[400]),
              ),
              SizedBox(
                height: 10
              ),
              Text(
            "TVL : \$ 476 M " ,
            style: TextStyle(fontSize: 14, color: Colors.yellow[400]),
          ),
              Text(
            "avg : \$ 1.46" ,
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
                                  ],
                                ),
                        )
                                ],
                              ),       
    ),
            ],
          );
  }
}