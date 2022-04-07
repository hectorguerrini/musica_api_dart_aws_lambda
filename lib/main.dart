import 'dart:convert';

import 'package:aws_lambda_dart_runtime/aws_lambda_dart_runtime.dart';

void main() async {
  /// This demo's handling an API Gateway request.
  final Handler<AwsApiGatewayEvent> musicaApiGateway =
      (context, AwsApiGatewayEvent event) async {
    final resp = {
      'message': 'Hello to ${context.requestId}',
    };
    print(event.toJson());
    final response = AwsApiGatewayResponse(
      body: json.encode(resp),
      isBase64Encoded: false,
      statusCode: 200,
      headers: {
        "Content-Type": "application/json",
      },
    );
    return response;
  };

  /// The Runtime is a singleton. You can define the handlers as you wish.
  Runtime()
    ..registerHandler<AwsApiGatewayEvent>("musica.handler", musicaApiGateway)
    ..invoke();
}
