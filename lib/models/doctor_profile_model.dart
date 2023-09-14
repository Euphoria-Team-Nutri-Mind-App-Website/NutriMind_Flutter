class DoctorProfileModel {
  bool? status;
  List<DoctorInformation>? doctorInformation;

  DoctorProfileModel({this.status, this.doctorInformation});

  DoctorProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['doctor information'] != null) {
      doctorInformation = <DoctorInformation>[];
      json['doctor information'].forEach((v) {
        doctorInformation!.add(new DoctorInformation.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.doctorInformation != null) {
      data['doctor information'] =
          this.doctorInformation!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DoctorInformation {
  String? name;
  String? email;
  String? image;
  String? nationalId;

  DoctorInformation({this.name, this.email, this.image, this.nationalId});

  DoctorInformation.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    image = json['image'];
    nationalId = json['national_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['image'] = this.image;
    data['national_id'] = this.nationalId;
    return data;
  }
}