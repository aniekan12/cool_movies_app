import 'package:coolmovies/common/di/locator.dart';
import 'package:coolmovies/modules/movies_home/data/models/create_movie_review_model.dart';
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

  @override
  Future<bool> createMovieReview(
      {required CreateMovieReviewModel model}) async {
    final result = await _client.mutate(
      MutationOptions(
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        document: gql(r"""
                mutation CreateMovieReview(\$title: String!, $movieId: ID!, $userReviewerId: ID!, $body: String!, $rating: Int!, $id: ID!) {
  createMovieReview(
    input: {movieReview: {title: $title, movieId: $movieId, userReviewerId: $userReviewerId, body: $body, rating: $rating, id: $id}}
  ) {
    clientMutationId
  }
}
        """),
        variables: {
          'title': model.title,
          'movieId': model.movieId,
          'userReviewerId': model.userReviewerId,
          'body': model.body,
          'rating': model.rating,
          'id': model.id,
        },
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return true;
  }
}
