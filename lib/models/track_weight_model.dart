// class TrackWeightModel {
//   bool? status;
//   String? firstWeight;
//   String? currentWeight;
//   String? changeInWeight;
//
//   TrackWeightModel(
//       {this.status, this.firstWeight, this.currentWeight, this.changeInWeight});
//
//   TrackWeightModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     firstWeight = json['first_weight'];
//     currentWeight = json['current_weight'];
//     changeInWeight = json['change in weight'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['first_weight'] = this.firstWeight;
//     data['current_weight'] = this.currentWeight;
//     data['change in weight'] = this.changeInWeight;
//     return data;
//   }
// }