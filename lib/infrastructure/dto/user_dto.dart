import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_tracker/common/id_dto.dart';
import 'package:sales_tracker/domain/entities/user.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

part 'user_dto.g.dart';

@JsonSerializable(nullable: false)
class UserDto extends IdDto<User> {
  @JsonKey(nullable: true,includeIfNull: false) final String id;
  final String name;
  final String phoneNumber;
  final String token;
  final DateTime createdAt;
  final DateTime updatedAt;

  UserDto(
      {@required this.id,
      @required this.name,
      @required this.phoneNumber,
      @required this.token,
      @required this.createdAt,
      @required this.updatedAt});

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  @override
  Option<User> toDomain() {
    return User.create(
        id: id,
        name: Name.create(name).getOrElse(() => null),
        phoneNumber: PhoneNumber.create(phoneNumber).getOrElse(() => null),
        token: token,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  static UserDto fromDomain(User user) {
    return UserDto(
      id: user.id,
      name: user.name.value,
      phoneNumber: user.phoneNumber.value,
      token: user.token,
      createdAt: user.createdAt,
      updatedAt: user.updatedAt,
    );
  }
}
