class TrackWeightModel {
  bool? status;
  List<WeightInformation>? weightInformation;

  TrackWeightModel({this.status, this.weightInformation});

  TrackWeightModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['weight_information'] != null) {
      weightInformation = <WeightInformation>[];
      json['weight_information'].forEach((v) {
        weightInformation!.add(new WeightInformation.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.weightInformation != null) {
      data['weight_information'] =
          this.weightInformation!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WeightInformation {
  String? firstWeight;
  String? currentWeight;
  String? changeInWeight;
  String? yourCalories;

  WeightInformation(
      {this.firstWeight,
        this.currentWeight,
        this.changeInWeight,
        this.yourCalories});

  WeightInformation.fromJson(Map<String, dynamic> json) {
    firstWeight = json['first_weight'];
    currentWeight = json['current_weight'];
    changeInWeight = json['change in weight'];
    yourCalories = json['your calories'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_weight'] = this.firstWeight;
    data['current_weight'] = this.currentWeight;
    data['change in weight'] = this.changeInWeight;
    data['your calories'] = this.yourCalories;
    return data;
  }
}