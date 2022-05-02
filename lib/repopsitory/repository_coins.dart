import 'package:dex_text/models/fetchCoins_models/fetch_coins_models.dart';
import 'package:dio/dio.dart';

class RepositoryCoin {
  static String mainUrl = "https://pro-api.coinmarketcap.com/v1/";
  final String apiKey = "49a66bb0-63f2-41ba-945c-bb0e9ec2184f";
  var currencyListingAPI = '${mainUrl}cryptocurrency/listings/latest';
  Dio _dio = Dio();
  Future<BigDataModel> getCoins() async {
    try {
      _dio.options.headers["X-CMC_PRO_API_KEY"] = apiKey;
      Response response = await _dio.get(currencyListingAPI);
      return BigDataModel.fromJson((response.data));
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return BigDataModel.withError("error");
    }
  }
}