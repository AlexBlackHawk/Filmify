import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:intl/intl.dart';

import 'Signature.dart';

class RekognitionHandler {
  final String _accessKey, _secretKey, _region;

  RekognitionHandler(this._accessKey, this._secretKey, this._region);

  Future<String> _rekognitionHttp(String amzTarget, String body) async {
    String endpoint = "https://rekognition.$_region.amazonaws.com/";
    String host = "rekognition.$_region.amazonaws.com";
    String httpMethod = "POST";
    String service = "rekognition";

    var now = DateTime.now().toUtc();
    var amzFormatter = DateFormat("yyyyMMdd'T'HHmmss'Z'");
    String amzDate = amzFormatter.format(now); // format should be '20170104T233405Z"

    var dateFormatter = DateFormat('yyyyMMdd');
    String dateStamp = dateFormatter.format(now); // Date w/o time, used in credential scope. format should be "20170104"

    int bodyLength = body.length;

    String queryStringParamters = "";
    Map<String, String> headerParamters = {
      "content-length": bodyLength.toString(),
      "content-type": "application/x-amz-json-1.1",
      "host": host,
      "x-amz-date": amzDate,
      "x-amz-target": amzTarget
    };

    String signature = Signature.generateSignature(
        endpoint,
        service,
        _region,
        _secretKey,
        httpMethod,
        now,
        queryStringParamters,
        headerParamters,
        body);

    String authorization = "AWS4-HMAC-SHA256 Credential=$_accessKey/$dateStamp/$_region/$service/aws4_request, SignedHeaders=content-length;content-type;host;x-amz-date;x-amz-target, Signature=$signature";
    headerParamters.putIfAbsent('Authorization', () => authorization);

    StringBuffer builder = StringBuffer();
    try {
      HttpClient httpClient = HttpClient();
      HttpClientRequest request = await httpClient.postUrl(Uri.parse(endpoint));

      request.headers.set('content-length', headerParamters['content-length'] as Object);
      request.headers.set('content-type', headerParamters['content-type'] as Object);
      request.headers.set('host', headerParamters['host'] as Object);
      request.headers.set('x-amz-date', headerParamters['x-amz-date'] as Object);
      request.headers.set('x-amz-target', headerParamters['x-amz-target'] as Object);
      request.headers.set('Authorization', headerParamters['Authorization'] as Object);

      request.write(body);

      HttpClientResponse response = await request.close();

      await for (String a in response.transform(utf8.decoder)) {
        builder.write(a);
      }
    } catch (e) {
      print(e);
    }

    return Future.value(builder.toString());
  }

  Future<String> recognizeCelebrities(File imagefile) async {
    try {
      List<int> imageBytes = imagefile.readAsBytesSync();
      String base64Image = base64Encode(imageBytes);
      String body = '{"Image":{"Bytes": "$base64Image"}}';
      String amzTarget = "RekognitionService.RecognizeCelebrities";

      String response = await _rekognitionHttp(amzTarget, body);
      return response;
    } catch (e) {
      print(e);
      return "{}";
    }
  }
}
