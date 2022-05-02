import 'package:dex_text/models/fetch_gasfee/data_model_gas.dart';
import 'package:dex_text/widgets/widgets4/test2.dart';
// import 'package:dex_text/models/fetch_gasfee/big_data_model_gas.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  final GasData gas;
  const Test({ Key? key, required this.gas }) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  @override
  Widget build(BuildContext context) {
    print(widget.gas);
    return Container(
      child: 
      Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "1",
                style: TextStyle(fontSize: 14, color: Colors.red[400]),
              ),
              SizedBox(height: 6,),
              Text(
                widget.gas.fastGasPrice.toStringAsFixed(0),
                style: TextStyle(fontSize: 14, color: Colors.blue[400]),
              ),
              SizedBox(height: 6,),
              Text(
                "3",
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
              "avg : 4" ,
              style: TextStyle(fontSize: 15, color: Colors.grey[500]),
              ),
              CoinGasfeeAlbitrum(),
            ],
          ),
        ],
      )
    );
  }
}