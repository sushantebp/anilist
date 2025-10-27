import 'package:anilist/core/core.dart';
import 'package:ferry/ferry.dart';
import 'package:gql_dio_link/gql_dio_link.dart';

class GraphQLService {
  static late final Client client;

  static void init() {
    final dioLink = DioLink(AppConfig.apiUrl, client: DioClient.create());
    final link = Link.from([dioLink]);

    client = Client(link: link, cache: Cache());
  }

  Stream<OperationResponse<T, dynamic>> request<T>(
    OperationRequest<T, dynamic> request,
  ) => client.request(request);
}
