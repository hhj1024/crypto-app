// import 'package:dex_text/widgets/widgets4/setting_widget.dart';

import 'package:dex_text/models/fetch_gasfee/big_data_model_gas.dart';
import 'package:dex_text/repopsitory/repository_gas.dart';
import 'package:dex_text/widgets/widgets4/setting_widget.dart';
import 'package:dex_text/widgets/widgets4/test.dart';
import 'package:flutter/material.dart';

class FourScreen extends StatefulWidget {
  const FourScreen({
    Key? key,
  }) : super(key: key);
@override
  _FourScreenState createState() => _FourScreenState();
}
class _FourScreenState extends State<FourScreen>{
  late Future<BigGasData> _futureGas;
  late RepositoryGas repositoryGas;
   @override
  void initState() {
    repositoryGas = RepositoryGas();
    _futureGas = repositoryGas.getGas();
    super.initState();
  }
 @override
  Widget build(BuildContext context) {
        return FutureBuilder(
            builder: (context, snapshot) { 
              return SettingWidget();
             },
    // return FutureBuilder<BigGasData>(
    // future: _futureGas,
    // builder: (context, snapshot) { 
    //   if (snapshot.connectionState == ConnectionState.done) {
    //     if (snapshot.hasData) {
    //       var gasDataE = snapshot.data!.gasData;
    //       return Test(gas: gasDataE);
    //     } else if (snapshot.hasError) {
    //         return Text('${snapshot.error}');
    //       }
    //     }
    //     return Center(
    //       child: CircularProgressIndicator(),
    //     );
    // },
    );
  }
}