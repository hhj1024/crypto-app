import 'package:dex_text/models/chart_data_model.dart';
import 'package:dex_text/models/fetchCoins_models/data_model.dart';
import 'package:dex_text/screen/coin_detail_screen.dart';
import 'package:flutter/material.dart';

import 'coin_chart_widget.dart';
import 'coin_logo_widget.dart';

class CoinListWidget extends StatefulWidget {

  final List<DataModel> coins;
  const CoinListWidget({ Key? key, required this.coins }) : super(key: key);

  @override
  _CoinListWidgetState createState() => _CoinListWidgetState();
}

class _CoinListWidgetState extends State<CoinListWidget> {
    void _pushSaved() {
    Navigator.of(context).push(
  MaterialPageRoute<void>(
        builder: (context) {
          final tiles = _saved.map(
            (coin) { 
              
                  var coinPrice = coin.quoteModel.usdModel;
                  var data = [
                    ChartData(coinPrice.percentChange_90d, 2160),
                    ChartData(coinPrice.percentChange_60d, 1440),
                    ChartData(coinPrice.percentChange_30d, 720),
                    ChartData(coinPrice.percentChange_24h, 24),
                    ChartData(coinPrice.percentChange_1h, 1),
                  ];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            ),
            const SizedBox(
              height: 5.0,
            ),
                  GestureDetector(
                    onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoinDetailScreen(coin: coin)),
                          );
                        },
                        child: Container(
                          height: 140.0,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0,0.6),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CoinLogoWidget(coin: coin),
                              CoinChartWidget(
                                data: data,
                                coinPrice: coinPrice,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 15,
                              )   
                            ],
                          ),
                        ),
                  ),
                ],
              );
            },
          );
          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(
                  context: context,
                  tiles: tiles,
                ).toList()
              : <Widget>[];

          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.cyan[900],
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color.fromRGBO(0, 0, 0,0.4),
        title:  Text("My Crypto",
         style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
              ),
              body: ListView(children: divided),
            ),
          );
        },
      )
  );
  }
  final _saved = <DataModel>{};
  final _suggestions = <DataModel>[];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color.fromRGBO(0, 0, 0,0.4),
          title: Text("Crypto Currency",
          style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            Container(
            margin: EdgeInsets.only(right: 16.0,),
            child: IconButton(
              icon: const Icon(Icons.star,size: 30.0,),
              color: Colors.yellow,     
              onPressed: _pushSaved,
            ),
          ),
          ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Padding(
              padding: 
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
              ),
            const SizedBox(
              height: 8.0,
            ),
              Expanded(
                child: ListView.builder(
                  itemExtent: 160,
                  itemCount: widget.coins.length,
                  itemBuilder: (context, i) {
                    var coin = widget.coins[i];
                  var coinPrice = coin.quoteModel.usdModel;
                  var data = [
                    ChartData(coinPrice.percentChange_90d, 2160),
                    ChartData(coinPrice.percentChange_60d, 1440),
                    ChartData(coinPrice.percentChange_30d, 720),
                    ChartData(coinPrice.percentChange_24h, 24),
                    ChartData(coinPrice.percentChange_1h, 1),
                  ];
                  if (i >= _suggestions.length) {
      }
                  final alreadySaved = _saved.contains(coin);
                    return GestureDetector(
                      onTap: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CoinDetailScreen(coin: coin)),
                      ); 
                      } ,
                      child: Container(
                        height: 160,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CoinLogoWidget(coin: coin),
                            CoinChartWidget(
                            data: data,
                            coinPrice: coinPrice,
                            color: Colors.grey,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5.0),
                            child: SizedBox(
                              height: 40,
                child: IconButton(
                  icon: Icon(alreadySaved ? Icons.star : Icons.star_border,
                                      color: alreadySaved ? Colors.yellow : null,
                                      semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',),
                  onPressed: () {
                              setState(() {
                                      if (alreadySaved) {
                                        _saved.remove(coin);
                                      } else { 
                                        _saved.add(coin);
                                      } 
                                    });
                  },
                            ),
                            ),
                          )
                          ],
                        ),
                        ),
                    );
                  },
                  ),
                  ),
            ],
          ),
      ),
    );
  }
}