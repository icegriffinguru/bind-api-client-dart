//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_fiat_wallet_request.g.dart';

/// CreateFiatWalletRequest
///
/// Properties:
/// * [currencyCode] 
abstract class CreateFiatWalletRequest implements Built<CreateFiatWalletRequest, CreateFiatWalletRequestBuilder> {
    @BuiltValueField(wireName: r'currency_code')
    String? get currencyCode;

    CreateFiatWalletRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CreateFiatWalletRequestBuilder b) => b;

    factory CreateFiatWalletRequest([void updates(CreateFiatWalletRequestBuilder b)]) = _$CreateFiatWalletRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<CreateFiatWalletRequest> get serializer => _$CreateFiatWalletRequestSerializer();
}

class _$CreateFiatWalletRequestSerializer implements StructuredSerializer<CreateFiatWalletRequest> {
    @override
    final Iterable<Type> types = const [CreateFiatWalletRequest, _$CreateFiatWalletRequest];

    @override
    final String wireName = r'CreateFiatWalletRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, CreateFiatWalletRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.currencyCode != null) {
            result
                ..add(r'currency_code')
                ..add(serializers.serialize(object.currencyCode,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CreateFiatWalletRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CreateFiatWalletRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'currency_code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.currencyCode = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

