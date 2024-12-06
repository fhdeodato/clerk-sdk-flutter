import 'package:clerk_auth/src/utils/extensions.dart';
import 'package:http/http.dart' as http;


/// Abstract class defining the interface to call the
/// Clerk back-end over http
///
abstract class ClerkHttpClient {
  /// Constructor
  const ClerkHttpClient();

  /// [send] date to the back end, and receive a [Response]
  ///
  Future<http.Response> send(
    HttpMethod method,
    Uri uri,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  );
}

/// Default implementation of [ClerkHttpClient]
///
class DefaultHttpClient implements ClerkHttpClient {
  /// Constructor
  const DefaultHttpClient();
}
