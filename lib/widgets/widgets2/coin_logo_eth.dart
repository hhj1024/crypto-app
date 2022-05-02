import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';

class CoinLogoETH extends StatelessWidget {
  const CoinLogoETH({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var coinIconUrl =
        "https://raw.githubusercontent.com/spothq/cryptocurrency-icons/master/128/color/";
    return Container(
      padding: const EdgeInsets.only(left: 5.0, right: 7.0),
      height: 80.0,
      width: 130.0,
      child: Column(
        children: [
          Container(
            height: 18.0,
            width: 18.0,
                  child: CachedNetworkImage(
                    imageUrl: ((coinIconUrl + "ETH" + ".png").toLowerCase()),
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        SvgPicture.asset('assets/icons/dollar.svg'),
                  ),),
          SizedBox(height: 5.0),
          Icon(Icons.local_gas_station_rounded,
          size: 35, color: Colors.white,
          ),
          Text(
            "ETH",
            style: TextStyle(color: Colors.white)
            
          ),
        ],
      ),
    );
  }
}