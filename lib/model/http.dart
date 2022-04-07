class HttpRequest {
  final dynamic body;

  HttpRequest(this.body);
}

class HttpResponse {
  final dynamic body;
  final int statusCode;
  HttpResponse(this.body, this.statusCode);
}
