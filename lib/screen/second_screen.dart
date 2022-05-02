import 'package:dex_text/models/fetchCoins_models/big_data_model.dart';
import 'package:dex_text/repopsitory/repository_coins.dart';

import 'package:dex_text/widgets/widgets2/gas_widget.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}
class _SecondScreenState extends State<SecondScreen>{
  late Future<BigDataModel> _futureCoin;
  late RepositoryCoin repositoryCoin;
  @override
  void initState() {
    repositoryCoin = RepositoryCoin();
    _futureCoin = repositoryCoin.getCoins();
    super.initState();
  }
 @override
  Widget build(BuildContext context) {
    return FutureBuilder<BigDataModel>(
    future: _futureCoin,
    builder: (context, snapshot) { 
      if (snapshot.connectionState == ConnectionState.done) {
        if (snapshot.hasData) {
          var coinsData = snapshot.data!.dataModel;
          return GasWidget(coins: coinsData);
        } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
        }
        return Center(
          child: CircularProgressIndicator(),
        );
        }, 
    );
  }
}
