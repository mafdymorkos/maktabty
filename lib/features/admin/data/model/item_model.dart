import 'dart:convert';

class ItemModel {
  final String id;
  final String name;
  final int categoryId;
  final String imageUrl;
  final int quantity;
  final String createdAt;
  final double wholesalePrice;
  final double retailPrice;
  final bool isFavourite;

  ItemModel({
    this.id = '',
    this.name = '',
    this.categoryId = 0,
    this.imageUrl = '',
    this.quantity = 0,
    this.createdAt = '',
    this.wholesalePrice = 0.0,
    this.retailPrice = 0.0,
    this.isFavourite = false,
  });

  ItemModel copyWith({
    String? id,
    String? name,
    int? categoryId,
    String? imageUrl,
    int? quantity,
    String? createdAt,
    double? wholesalePrice,
    double? retailPrice,
    bool? isFavourite,
  }) {
    return ItemModel(
      id: id ?? this.id,
      name: name ?? this.name,
      categoryId: categoryId ?? this.categoryId,
      imageUrl: imageUrl ?? this.imageUrl,
      quantity: quantity ?? this.quantity,
      createdAt: createdAt ?? this.createdAt,
      wholesalePrice: wholesalePrice ?? this.wholesalePrice,
      retailPrice: retailPrice ?? this.retailPrice,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'category_id': categoryId,
      'image_url': imageUrl,
      'quantity': quantity,
      'updated_at': createdAt,
      'wholesale_price': wholesalePrice,
      'retail_price': retailPrice,
      'is_favourite': isFavourite,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id'] as String? ?? '',
      name: map['name'] as String? ?? '',
      categoryId: map['category_id'] as int? ?? 0,
      imageUrl: map['image_url'] as String? ?? '',
      quantity: map['quantity'] as int? ?? 0,
      createdAt: map['updated_at'] as String? ?? '',
      wholesalePrice: (map['wholesale_price'] as num?)?.toDouble() ?? 0.0,
      retailPrice: (map['retail_price'] as num?)?.toDouble() ?? 0.0,
      isFavourite: map['is_favourite'] as bool? ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ItemModel(id: $id, name: $name, categoryId: $categoryId, imageUrl: $imageUrl, quantity: $quantity, createdAt: $createdAt, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(covariant ItemModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.categoryId == categoryId &&
        other.imageUrl == imageUrl &&
        other.quantity == quantity &&
        other.createdAt == createdAt &&
        other.isFavourite == isFavourite;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        categoryId.hashCode ^
        imageUrl.hashCode ^
        quantity.hashCode ^
        createdAt.hashCode ^
        isFavourite.hashCode;
  }
}
