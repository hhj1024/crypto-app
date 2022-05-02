
import 'package:dex_text/models/fetchCoins_models/data_model.dart';
import 'package:flutter/material.dart';

import 'coin_gasfee_eth.dart';
import 'coin_layer2.dart';
import 'coin_logo_eth.dart';

class  GasWidget extends StatelessWidget {
  final List<DataModel> coins;
  const GasWidget({ Key? key, required this.coins,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var coin = coins[1];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color.fromRGBO(0, 0, 0,0.4),
          title: Text("ETH Gas Fee",
            style: TextStyle(color: Colors.white, fontSize: 20,)), 
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 7.0),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                height: 140,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 4.0),
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
                                CoinLogoETH(),
                                CoinGasfeeETH(coin: coin),
                              ],
                            ),
              ),
               Container(
                           margin: const EdgeInsets.symmetric(
                                vertical: 8.0,),
                          child: Center(
                          child: Text(
                            'Layer2',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                      ),
                        ),
                        Container(
                            child: 
                                Layer2(),
                          ),
            ],
          ),
        ),
        ),
    );
  }
}