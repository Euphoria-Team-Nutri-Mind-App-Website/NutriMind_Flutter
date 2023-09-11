class PatientModel {
  bool? status;
  List<PatientInformation>? patientInformation;

  PatientModel({this.status, this.patientInformation});

  PatientModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['patient information'] != null) {
      patientInformation = <PatientInformation>[];
      json['patient information'].forEach((v) {
        patientInformation!.add(new PatientInformation.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.patientInformation != null) {
      data['patient information'] =
          this.patientInformation!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PatientInformation {
  String? name;
  String? email;
  String? image;

  PatientInformation({this.name, this.email, this.image});

  PatientInformation.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['image'] = this.image;
    return data;
  }
}

