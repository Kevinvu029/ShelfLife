import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FoodCloudFunctionCall {
  static Future<ApiCallResponse> call({
    String? barcodeVariable = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'foodCloudFunction',
      apiUrl: 'https://getproductinfo-3sf3lmsvra-uc.a.run.app',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'barcode': barcodeVariable,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? productName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.product_name''',
      ));
  static String? imageURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.image_url''',
      ));
  static int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class OpenFoodFactsCall {
  static Future<ApiCallResponse> call({
    String? barcode = '3017624010701',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'OpenFoodFacts',
      apiUrl:
          'https://world.openfoodfacts.net/api/v2/product/${barcode}?fields=product_name,image_url',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? productName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.product.product_name''',
      ));
  static String? imageURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.product.image_url''',
      ));
  static int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
