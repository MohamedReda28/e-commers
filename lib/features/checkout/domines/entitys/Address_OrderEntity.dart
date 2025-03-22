class AddressOrderentity {
  String? name;
  String? address;
  String? phone;
  String? email;
  String? city;
  String? addressDetels;

  AddressOrderentity(
      {this.name,
      this.address,
      this.phone,
      this.email,
      this.city,
      this.addressDetels});

  @override
  String toStringg() {
    return '$city $addressDetels';
  }
}
