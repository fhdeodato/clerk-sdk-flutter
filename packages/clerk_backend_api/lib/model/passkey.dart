//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Passkey {
  /// Returns a new [Passkey] instance.
  Passkey({
    required this.status,
    required this.strategy,
    this.nonce,
    this.message,
    required this.attempts,
    required this.expireAt,
    this.verifiedAtClient,
  });

  PasskeyStatusEnum status;

  PasskeyStrategyEnum strategy;

  PasskeyNonceEnum? nonce;

  String? message;

  int? attempts;

  int? expireAt;

  String? verifiedAtClient;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Passkey &&
          other.status == status &&
          other.strategy == strategy &&
          other.nonce == nonce &&
          other.message == message &&
          other.attempts == attempts &&
          other.expireAt == expireAt &&
          other.verifiedAtClient == verifiedAtClient;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status.hashCode) +
      (strategy.hashCode) +
      (nonce == null ? 0 : nonce!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (attempts == null ? 0 : attempts!.hashCode) +
      (expireAt == null ? 0 : expireAt!.hashCode) +
      (verifiedAtClient == null ? 0 : verifiedAtClient!.hashCode);

  @override
  String toString() =>
      'Passkey[status=$status, strategy=$strategy, nonce=$nonce, message=$message, attempts=$attempts, expireAt=$expireAt, verifiedAtClient=$verifiedAtClient]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'status'] = this.status;
    json[r'strategy'] = this.strategy;
    if (this.nonce != null) {
      json[r'nonce'] = this.nonce;
    } else {
      json[r'nonce'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.attempts != null) {
      json[r'attempts'] = this.attempts;
    } else {
      json[r'attempts'] = null;
    }
    if (this.expireAt != null) {
      json[r'expire_at'] = this.expireAt;
    } else {
      json[r'expire_at'] = null;
    }
    if (this.verifiedAtClient != null) {
      json[r'verified_at_client'] = this.verifiedAtClient;
    } else {
      json[r'verified_at_client'] = null;
    }
    return json;
  }

  /// Returns a new [Passkey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Passkey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Passkey[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Passkey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Passkey(
        status: PasskeyStatusEnum.fromJson(json[r'status'])!,
        strategy: PasskeyStrategyEnum.fromJson(json[r'strategy'])!,
        nonce: PasskeyNonceEnum.fromJson(json[r'nonce']),
        message: mapValueOfType<String>(json, r'message'),
        attempts: mapValueOfType<int>(json, r'attempts'),
        expireAt: mapValueOfType<int>(json, r'expire_at'),
        verifiedAtClient: mapValueOfType<String>(json, r'verified_at_client'),
      );
    }
    return null;
  }

  static List<Passkey> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Passkey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Passkey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Passkey> mapFromJson(dynamic json) {
    final map = <String, Passkey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Passkey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Passkey-objects as value to a dart map
  static Map<String, List<Passkey>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Passkey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Passkey.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'strategy',
    'attempts',
    'expire_at',
  };
}

class PasskeyStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PasskeyStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const verified = PasskeyStatusEnum._(r'verified');

  /// List of all possible values in this [enum][PasskeyStatusEnum].
  static const values = <PasskeyStatusEnum>[
    verified,
  ];

  static PasskeyStatusEnum? fromJson(dynamic value) =>
      PasskeyStatusEnumTypeTransformer().decode(value);

  static List<PasskeyStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PasskeyStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasskeyStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PasskeyStatusEnum] to String,
/// and [decode] dynamic data back to [PasskeyStatusEnum].
class PasskeyStatusEnumTypeTransformer {
  factory PasskeyStatusEnumTypeTransformer() =>
      _instance ??= const PasskeyStatusEnumTypeTransformer._();

  const PasskeyStatusEnumTypeTransformer._();

  String encode(PasskeyStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PasskeyStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PasskeyStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'verified':
          return PasskeyStatusEnum.verified;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PasskeyStatusEnumTypeTransformer] instance.
  static PasskeyStatusEnumTypeTransformer? _instance;
}

class PasskeyStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const PasskeyStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const passkey = PasskeyStrategyEnum._(r'passkey');

  /// List of all possible values in this [enum][PasskeyStrategyEnum].
  static const values = <PasskeyStrategyEnum>[
    passkey,
  ];

  static PasskeyStrategyEnum? fromJson(dynamic value) =>
      PasskeyStrategyEnumTypeTransformer().decode(value);

  static List<PasskeyStrategyEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PasskeyStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasskeyStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PasskeyStrategyEnum] to String,
/// and [decode] dynamic data back to [PasskeyStrategyEnum].
class PasskeyStrategyEnumTypeTransformer {
  factory PasskeyStrategyEnumTypeTransformer() =>
      _instance ??= const PasskeyStrategyEnumTypeTransformer._();

  const PasskeyStrategyEnumTypeTransformer._();

  String encode(PasskeyStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PasskeyStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PasskeyStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'passkey':
          return PasskeyStrategyEnum.passkey;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PasskeyStrategyEnumTypeTransformer] instance.
  static PasskeyStrategyEnumTypeTransformer? _instance;
}

class PasskeyNonceEnum {
  /// Instantiate a new enum with the provided [value].
  const PasskeyNonceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const nonce = PasskeyNonceEnum._(r'nonce');

  /// List of all possible values in this [enum][PasskeyNonceEnum].
  static const values = <PasskeyNonceEnum>[
    nonce,
  ];

  static PasskeyNonceEnum? fromJson(dynamic value) =>
      PasskeyNonceEnumTypeTransformer().decode(value);

  static List<PasskeyNonceEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PasskeyNonceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasskeyNonceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PasskeyNonceEnum] to String,
/// and [decode] dynamic data back to [PasskeyNonceEnum].
class PasskeyNonceEnumTypeTransformer {
  factory PasskeyNonceEnumTypeTransformer() =>
      _instance ??= const PasskeyNonceEnumTypeTransformer._();

  const PasskeyNonceEnumTypeTransformer._();

  String encode(PasskeyNonceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PasskeyNonceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PasskeyNonceEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'nonce':
          return PasskeyNonceEnum.nonce;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PasskeyNonceEnumTypeTransformer] instance.
  static PasskeyNonceEnumTypeTransformer? _instance;
}
