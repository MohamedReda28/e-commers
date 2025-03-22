import 'package:fruts_store/features/checkout/domines/entitys/Address_OrderEntity.dart';

class AddressOrderModel {
  String? name;
  String? address;
  String? phone;
  String? email;
  String? city;
  String? addressDetels;

  AddressOrderModel(
      {this.name,
      this.address,
      this.phone,
      this.email,
      this.city,
      this.addressDetels});

  factory AddressOrderModel.fromEntity(AddressOrderentity addressOrderentity) {
    return AddressOrderModel(
      name: addressOrderentity.name,
      address: addressOrderentity.address,
      phone: addressOrderentity.phone,
      email: addressOrderentity.email,
      city: addressOrderentity.city,
      addressDetels: addressOrderentity.addressDetels,
    );
  }

  toJson() {
    return {
      'name': name,
      'address': address,
      'phone': phone,
      'email': email,
      'city': city,
      'addressDetels': addressDetels,
    };
  }
}
