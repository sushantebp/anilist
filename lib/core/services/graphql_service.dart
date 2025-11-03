import 'package:anilist/core/core.dart';
import 'package:ferry/ferry.dart';
import 'package:gql_dio_link/gql_dio_link.dart';

/// Initializes the Ferry client with Dio HTTP link
/// [link] manages request/response flow
/// create the Ferry [client] with link and cache
///

class GraphQLService {
  late final Client client;

  GraphQLService._internal() {
    final dioInstance = DioClient().dio;
    final dioLink = DioLink(AppConfig.apiUrl, client: dioInstance);
    final link = Link.from([dioLink]);
    client = Client(link: link, cache: Cache());
  }
  static final GraphQLService _instance = GraphQLService._internal();

  factory GraphQLService() => _instance;
}
