import 'package:flutter/material.dart';

class CoinGasfeeAlbitrum extends StatelessWidget {

  const CoinGasfeeAlbitrum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Text(""),
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
                    );
  }
}