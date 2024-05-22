import 'package:coolmovies/common/di/locator.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'movies_home_api_datasource.dart';

class MoviesHomeApiDatasourceImpl implements MoviesHomeApiDatasource {
  MoviesHomeApiDatasourceImpl({GraphQLClient? client})
      : _client = client ?? locator.get<GraphQLClient>();

  final GraphQLClient _client;
  @override
  Future<List<Movies>> getMovies() async {
    final result = await _client.query(
      QueryOptions(
        document: gql(r"""
          query AllMovies {
  allMovies {
    nodes {
      id
      imgUrl
      movieDirectorId
      userCreatorId
      title
      releaseDate
      nodeId
      userByUserCreatorId {
        id
        name
        nodeId
      }
      movieReviewsByMovieId {
        edges {
          node {
            id
            rating
            title
            body
          }
        }
      }
    }
  }
}
        """),
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final List movies = result.data!['allMovies']['nodes'];
    return movies.map((movie) => Movies.fromJson(movie)).toList();
  }
}
