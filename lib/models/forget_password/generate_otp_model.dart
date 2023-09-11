class GenerateOtpModel {
  int? oTPCode;

  GenerateOtpModel({this.oTPCode});

  GenerateOtpModel.fromJson(Map<String, dynamic> json) {
    oTPCode = json['OTP-Code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['OTP-Code'] = this.oTPCode;
    return data;
  }
}