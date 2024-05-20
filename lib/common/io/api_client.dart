import 'package:coolmovies/common/di/locator.dart';
import 'package:coolmovies/common/exception/cool_movies_exception.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ApiClient {
  final GraphQLClient _client;

  ApiClient.inject(GraphQLClient? client)
      : _client = client ?? locator<GraphQLClient>();

  Future<T> query<T>({
    required String query,
    Map<String, dynamic>? variables,
  }) async {
    try {
      final result = await _client.query(
        QueryOptions(
          fetchPolicy: FetchPolicy.cacheAndNetwork,
          document: gql(query),
          variables: variables ?? {},
        ),
      );
      return result.data as T;
    } catch (e) {
      throw CoolMoviesException(e.toString());
    }
  }
}
