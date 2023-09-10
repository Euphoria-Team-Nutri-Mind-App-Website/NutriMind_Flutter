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



// class PatientModel {
//   String? name;
//   String? email;
//   String? image;
//
//   PatientModel(
//       this.name,
//       this.email,
//       this.image,
//       );
//
//   PatientModel.fromJson({required Map<String, dynamic> data}){
//     name= data["name"];
//     email= data["email"];
//     image= data["image"];
//   }
//
//   Map<String, dynamic> toMap() => {
//     "name": name,
//     "email": email,
//     "image": image,
//   };
// }


// class PatientModel {
//   String name;
//   String email;
//   String image;
//
//   PatientModel({
//     required this.name,
//     required this.email,
//     required this.image,
//   });
//
//   factory PatientModel.fromJson({required Map<String, dynamic> json}) => PatientModel(
//     name: json["name"],
//     email: json["email"],
//     image: json["image"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//     "email": email,
//     "image": image,
//   };
// }






//
// class PatientModel {
//   bool? status;
//   List<PatientInformation>? patientInformation;
//
//   PatientModel({this.status, this.patientInformation});
//
//   PatientModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     if (json['patient information'] != null) {
//       patientInformation = <PatientInformation>[];
//       json['patient information'].forEach((v) {
//         patientInformation!.add(new PatientInformation.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     if (this.patientInformation != null) {
//       data['patient information'] =
//           this.patientInformation!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//


// class PatientInformation {
//   String? name;
//   String? email;
//   String? image;
//
//   PatientInformation({this.name, this.email, this.image});
//
//   PatientInformation.fromJson(json) {
//     name = json['name'];
//     email = json['email'];
//     image = json['image'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['email'] = this.email;
//     data['image'] = this.image;
//     return data;
//   }
// }







// import 'dart:convert';
//
//
// class PatientModel {
//   int? id;
//   String? name;
//   String? email;
//   String? image;
//   String? gender;
//   String? creditCardNumber;
//   int? age;
//   int? height;
//   int? firstWeight;
//   dynamic currentWeight;
//   String? activeStatus;
//   dynamic calories;
//   dynamic verficationCode;
//   dynamic expireAt;
//   dynamic emailVerifiedAt;
//   String? createdAt;
//   String? updatedAt;
//
//   PatientModel({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.image,
//     required this.gender,
//     required this.creditCardNumber,
//     required this.age,
//     required this.height,
//     required this.firstWeight,
//     this.currentWeight,
//     required this.activeStatus,
//     this.calories,
//     this.verficationCode,
//     this.expireAt,
//     this.emailVerifiedAt,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//
//     PatientModel.fromJson({required Map<String, dynamic> data}){
//       id= data["id"];
//       name= data["name"];
//       email= data["email"];
//       image= data["image"];
//       gender= data["gender"];
//       creditCardNumber= data["credit_card_number"];
//       age= data["age"];
//       height= data["height"];
//       firstWeight= data["first_weight"];
//       currentWeight= data["current_weight"];
//       activeStatus= data["active_status"];
//       calories= data["calories"];
//       verficationCode= data["verfication_code"];
//       expireAt= data["expire_at"];
//       emailVerifiedAt= data["email_verified_at"];
//       createdAt= data["created_at"];
//       updatedAt= data["updated_at"];
//       }
//
//
//   Map<String, dynamic> toMap() => {
//     "id": id,
//     "name": name,
//     "email": email,
//     "image": image,
//     "gender": gender,
//     "credit_card_number": creditCardNumber,
//     "age": age,
//     "height": height,
//     "first_weight": firstWeight,
//     "current_weight": currentWeight,
//     "active_status": activeStatus,
//     "calories": calories,
//     "verfication_code": verficationCode,
//     "expire_at": expireAt,
//     "email_verified_at": emailVerifiedAt,
//     "created_at": createdAt,
//     "updated_at": updatedAt,
//   };
// }
