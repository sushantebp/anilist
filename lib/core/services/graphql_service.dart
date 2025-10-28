import 'package:anilist/core/core.dart';
import 'package:ferry/ferry.dart';
import 'package:gql_dio_link/gql_dio_link.dart';

/// Initializes the Ferry client with Dio HTTP link
/// [link] manages request/response flow
/// create the Ferry [client] with link and cache
///
class GraphqlService {
  final Client client;

  GraphqlService._(this.client);

  factory GraphqlService() {
    final dioLink = DioLink(AppConfig.apiUrl, client: DioClient.create());
    final link = Link.from([dioLink]);
    final client = Client(link: link);
    return GraphqlService._(client);
  }
}
