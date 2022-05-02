import 'package:dex_text/models/fetchCoins_models/fetch_coins_models.dart';
import 'package:dex_text/widgets/widgets1/coin_list_widget.dart';
import 'package:dex_text/repopsitory/repository_coins.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({
    Key? key,
  }) : super(key: key);
  
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>{
  late Future<BigDataModel> _futureCoins;
  late RepositoryCoin repositoryCoin;
  @override
  void initState() {
    repositoryCoin = RepositoryCoin();
    _futureCoins = repositoryCoin.getCoins();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BigDataModel>(
      future: _futureCoins,
      builder: (context, snapshot) { 
          if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData){
              var coinsData = snapshot.data!.dataModel;
              return  CoinListWidget(coins: coinsData);
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