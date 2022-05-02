
import 'package:dex_text/models/fetch_gasfee/big_data_model_gas.dart';
import 'package:dio/dio.dart';

class RepositoryGas {
  static String mainUrl = "https://api.etherscan.io/";
  static String apiKey = "XH2SPWUSDCCW5ASPEHWF4VF3QPPMCTHJYS";
  var uri = '${mainUrl}api?module=gastracker&action=gasoracle&apikey=$apiKey';
   Dio _dio = Dio();
  Future<BigGasData> getGas() async {
    try{
      Response response = await _dio.get(uri);
      // print(response.data);
      return BigGasData.fromJson((response.data));
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return BigGasData.withError("error");
    }
  }
  
}