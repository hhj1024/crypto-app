
class GasData {
  final int lastBlock;
  final int safeGasPrice;
  final int proposeGasPrice;
  final int fastGasPrice;
  final int suggestBaseFee;
  final int gasUsedRatio;

  GasData(
    this.lastBlock,
    this.safeGasPrice,
    this.proposeGasPrice,
    this.fastGasPrice,
    this.suggestBaseFee,
    this.gasUsedRatio
  );
  factory GasData.fromJson(Map<String, dynamic> json) {
    return GasData(
      json["LastBlock"] ?? 0,
      json["SafeGasPrice"] ?? 0,
      json["ProposeGasPrice"] ?? 0,
      json["FastGasPrice"] ?? 0,
      json["suggestBaseFee"] ?? 0,
      json["gasUsedRatio"] ?? 0,
    );
  } 
}