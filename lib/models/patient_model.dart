
class PatientModel {
  String? name;
  String? email;
  String? phone;
  String? image;
  String? token;

  PatientModel(
    this.name,
    this.email,
    this.phone,
    this.image,
    this.token,
  );

  PatientModel.fromJson({required Map<String, dynamic> data}){
        name= data["name"];
        email= data["email"];
        phone= data["phone"];
        image= data["image"];
        token= data["token"];
      }

  Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "phone": phone,
        "image": image,
        "token": token,
      };
}
