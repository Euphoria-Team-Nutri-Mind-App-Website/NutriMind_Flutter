class RecommendedCaloriesModel {
  Null? yourActiveStatus;
  int? yourCalories;
  String? lose05Kg;
  String? lose1Kg;
  String? gain05Kg;
  String? gain1Kg;

  RecommendedCaloriesModel(
      {this.yourActiveStatus,
        this.yourCalories,
        this.lose05Kg,
        this.lose1Kg,
        this.gain05Kg,
        this.gain1Kg});

  RecommendedCaloriesModel.fromJson(Map<String, dynamic> json) {
    yourActiveStatus = json['Your Active Status'];
    yourCalories = json['Your calories'];
    lose05Kg = json['Lose 0.5 Kg'];
    lose1Kg = json['Lose 1 Kg'];
    gain05Kg = json['Gain 0.5 kg'];
    gain1Kg = json['Gain 1 Kg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Your Active Status'] = this.yourActiveStatus;
    data['Your calories'] = this.yourCalories;
    data['Lose 0.5 Kg'] = this.lose05Kg;
    data['Lose 1 Kg'] = this.lose1Kg;
    data['Gain 0.5 kg'] = this.gain05Kg;
    data['Gain 1 Kg'] = this.gain1Kg;
    return data;
  }
}