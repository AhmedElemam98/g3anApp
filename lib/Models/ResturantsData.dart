class ResturantsModel {
  final int totalEntries;
  final int perPage;
  final int currentPage;
  final List<ResturantsData> restaurants;

  ResturantsModel(
      {this.restaurants, this.totalEntries, this.perPage, this.currentPage});

  factory ResturantsModel.fromJson(Map<String, dynamic> parsedJson) {
    var data = parsedJson['restaurants'] as List;
    List<ResturantsData> resData = new List();
    for (int i = 0; i < data.length; i++) {
      resData.add(ResturantsData.fromJson(data[i]));
    }
    return ResturantsModel(
      totalEntries: parsedJson['total_entries'],
      currentPage: parsedJson['current_page'],
      perPage: parsedJson['per_page'],
      restaurants: resData,
    );
  }
}

class ResturantsData {
  final int id;
  final String name;
  final String address;
  final String city;
  final String state;
  final String area;
  final String postalCode;
  final String country;
  final String phone;
  final double lat;
  final double lng;
  final int price;
  final String reserveUrl;
  final String mobileReserveUrl;
  final String imageUrl;

  ResturantsData(
      {this.id,
      this.name,
      this.address,
      this.city,
      this.state,
      this.area,
      this.postalCode,
      this.country,
      this.phone,
      this.lat,
      this.lng,
      this.price,
      this.reserveUrl,
      this.mobileReserveUrl,
      this.imageUrl});

  factory ResturantsData.fromJson(Map<String, dynamic> parsedJson) {
    return ResturantsData(
      imageUrl: parsedJson['image_url'],
      address: parsedJson['address'],
      area: parsedJson['area'],
      city: parsedJson['city'],
      country: parsedJson['country'],
      id: parsedJson['id'],
      lat: parsedJson['lat'],
      lng: parsedJson['lng'],
      name: parsedJson['name'],
      phone: parsedJson['phone'],
      price: parsedJson['price'],
      state: parsedJson['state'],
      reserveUrl: parsedJson['reserve_url'],
      mobileReserveUrl: parsedJson['mobile_reserve_url'],
      postalCode: parsedJson['postal_code'],
    );
  }
}
