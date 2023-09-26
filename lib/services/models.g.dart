// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Album _$AlbumFromJson(Map<String, dynamic> json) => Album(
      userId: json['userId'] as int? ?? 0,
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? "",
    );

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
    };
