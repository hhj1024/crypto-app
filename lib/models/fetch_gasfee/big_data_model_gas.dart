import 'gas_model.dart';

class BigGasData {
  final GasData gasData;

  BigGasData({
    required this.gasData,
  });
  factory BigGasData.fromJson(Map<String, dynamic> json) {
          print(GasData.fromJson(json["result"]));
    return BigGasData(
      gasData: GasData.fromJson(json["result"]),
    );
  }
  BigGasData.withError(String error)
    : gasData = GasData(0, 0, 0, 0, 0, 0);
}