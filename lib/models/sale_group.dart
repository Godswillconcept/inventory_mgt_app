class SaleGoup {
  final int? id;
  final String? totalAmount;
  final int? buyerId;
  final String? mode;
  final DateTime? date;
  final Buyer? buyer;
  final List<Sales>? sales;
  final List<String>? salesDescription;

  SaleGoup({
    this.id,
    this.totalAmount,
    this.buyerId,
    this.mode,
    this.date,
    this.buyer,
    this.sales,
    this.salesDescription,
  });

  SaleGoup.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        totalAmount = json['total_amount'] as String?,
        buyerId = json['buyer_id'] as int?,
        mode = json['mode'] as String?,
        date = DateTime.parse(json['date']),
        buyer = (json['buyer'] as Map<String, dynamic>?) != null
            ? Buyer.fromJson(json['buyer'] as Map<String, dynamic>)
            : null,
        sales = (json['sales'] as List?)
            ?.map((dynamic e) => Sales.fromJson(e as Map<String, dynamic>))
            .toList(),
        salesDescription = (json['sales_description'] as List?)
            ?.map((dynamic e) => e as String)
            .toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'total_amount': totalAmount,
        'buyer_id': buyerId,
        'mode': mode,
        'date': date?.toIso8601String(),
        'buyer': buyer?.toJson(),
        'sales': sales?.map((e) => e.toJson()).toList(),
        'sales_description': salesDescription
      };
}

class Buyer {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? username;
  final String? email;
  final String? address;
  final String? password;
  final String? phone;
  final String? gender;
  final DateTime? dob;
  final String? photo;

  Buyer({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.address,
    this.password,
    this.phone,
    this.gender,
    this.dob,
    this.photo,
  });

  get name {
    return ("$firstName ${lastName!}");
  }

  Buyer.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        firstName = json['first_name'] as String?,
        lastName = json['last_name'] as String?,
        username = json['username'] as String?,
        email = json['email'] as String?,
        address = json['address'] as String?,
        password = json['password'] as String?,
        phone = json['phone'] as String?,
        gender = json['gender'] as String?,
        dob = DateTime.parse(json['dob']),
        photo = json['photo'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'username': username,
        'email': email,
        'address': address,
        'password': password,
        'phone': phone,
        'gender': gender,
        'dob': dob?.toIso8601String(),
        'photo': photo
      };
}

class Sales {
  final int? id;
  final String? mode;
  final int? itemId;
  final int? groupId;
  final String? quantity;
  final String? sellingPrice;
  final DateTime? date;
  final String? remark;

  Sales({
    this.id,
    this.mode,
    this.itemId,
    this.groupId,
    this.quantity,
    this.sellingPrice,
    this.date,
    this.remark,
  });

  Sales.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        mode = json['mode'] as String?,
        itemId = json['item_id'] as int?,
        groupId = json['group_id'] as int?,
        quantity = json['quantity'] as String?,
        sellingPrice = json['selling_price'] as String?,
        date = DateTime.parse(json['date']),
        remark = json['remark'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'mode': mode,
        'item_id': itemId,
        'group_id': groupId,
        'quantity': quantity,
        'selling_price': sellingPrice,
        'date': date?.toIso8601String(),
        'remark': remark
      };
}