import 'package:cached_network_image/cached_network_image.dart';
import 'package:dex_text/models/fetchCoins_models/fetch_coins_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoinLogoWidget extends StatelessWidget {
  final DataModel coin;
  const CoinLogoWidget({ Key? key, required this.coin }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var coinIconUrl = 
        "https://raw.githubusercontent.com/spothq/cryptocurrency-icons/master/128/color/";
   
    return Container(
      padding: const EdgeInsets.only(left: 15.0),
      height: 85.0,
      width: 100.0,
      child: Column(
        children: [
          Container(
              height: 45.0,
              width: 45.0,
              child: CachedNetworkImage(
                imageUrl: ((coinIconUrl + coin.symbol + ".png").toLowerCase()),
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    SvgPicture.asset('assets/icons/dollar.svg'),
              )),
          const SizedBox(height: 5.0),
          Text(
            coin.symbol,
             style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          const SizedBox(height: 2.0),
          Text(
            "\$" + coin.quoteModel.usdModel.price.toStringAsFixed(2),
             style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}