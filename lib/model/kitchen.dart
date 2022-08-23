class Kitchen {
  final bool isAcOn;
  final bool isHeatOn;
  final int heatSpeed;
  final bool isFanOn;
  final int fanSpeed;

  const Kitchen(
      {required this.isAcOn,
      required this.isHeatOn,
      required this.heatSpeed,
      required this.isFanOn,
      required this.fanSpeed});

  Kitchen copyWith({
    bool? isAcOn,
    bool? isHeatOn,
    int? heatSpeed,
    bool? isFanOn,
    int? fanSpeed,
  }) {
    return Kitchen(
        isAcOn: isAcOn ?? this.isAcOn,
        isHeatOn: isHeatOn ?? this.isHeatOn,
        heatSpeed: heatSpeed ?? this.heatSpeed,
        isFanOn: isFanOn ?? this.isFanOn,
        fanSpeed: fanSpeed ?? this.fanSpeed);
  }
}
