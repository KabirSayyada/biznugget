// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemModelAdapter extends TypeAdapter<ItemModel> {
  @override
  final int typeId = 0;

  @override
  ItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemModel(
      id: fields[0] as int,
      name: fields[1] as String,
      price: fields[3] as double,
      description: fields[2] as String,
      imageUrl: fields[5] as String,
      sale: fields[4] as double?,
      rate: fields[6] as double?,
      reviews: fields[7] as double?,
      categories: [],
      subCategories: [],
    );
  }

  @override
  void write(BinaryWriter writer, ItemModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.sale)
      ..writeByte(5)
      ..write(obj.imageUrl)
      ..writeByte(6)
      ..write(obj.rate)
      ..writeByte(7)
      ..write(obj.reviews);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
