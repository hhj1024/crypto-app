
import 'dart:convert';

import 'package:dex_text/models/fetchCoins_models/data_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CoinGasfeeETH extends StatefulWidget {
  final DataModel coin;
  const CoinGasfeeETH({ Key? key, required this.coin }) : super(key: key);

  @override
  _CoinGasfeeETHState createState() => _CoinGasfeeETHState();
}

class _CoinGasfeeETHState extends State<CoinGasfeeETH> {
  @override
  void initState() {
    _getGasfeeETH();
    super.initState();
  }

  var fastGas = '';
  var proposeGas = '';
  var safeGas = '';
  int proposeFee = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "High : $fastGas",
                style: TextStyle(fontSize: 14, color: Colors.red[400]),
              ),
              SizedBox(height: 6,),
              Text(
                "Average : $proposeGas",
                style: TextStyle(fontSize: 14, color: Colors.blue[400]),
              ),
              SizedBox(height: 6,),
              Text(
                "Low : $safeGas",
                style: TextStyle(fontSize: 14, color: Colors.green[400]),
              ),
            ],
          ),
          SizedBox(
            width: 18.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
              "avg : \$ $proposeFee" ,
              style: TextStyle(fontSize: 15, color: Colors.grey[500]),
              ),
            ],
          ),
        ],
      )
    );
  }

  void _getGasfeeETH() async {
    var apiKey = "XH2SPWUSDCCW5ASPEHWF4VF3QPPMCTHJYS";
    var uri = Uri.parse("https://api.etherscan.io/api?module=gastracker&action=gasoracle&apikey=$apiKey");
  
    http.Response response = await http.get(uri);

    var responseBody = utf8.decode(response.bodyBytes);
    var lists = json.decode(responseBody);
    setState(() {
      fastGas = lists["result"]["FastGasPrice"];
      proposeGas = lists["result"]["ProposeGasPrice"];
      safeGas = lists["result"]["SafeGasPrice"];
    });
    proposeFee = (int.parse(proposeGas) * 21000 * int.parse(widget.coin.quoteModel.usdModel.price.toStringAsFixed(0)) ~/ 1000000000);  
  }
}