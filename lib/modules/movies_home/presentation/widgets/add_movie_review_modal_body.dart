import 'package:coolmovies/common/typography/text_styles.dart';
import 'package:coolmovies/modules/movies_home/data/models/create_movie_review_model.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/presentation/view_models/movie_review_viewmodel.dart';
import 'package:coolmovies/modules/movies_home/presentation/view_models/movies_home_viewmodel.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_button.dart';
import 'app_textfield.dart';

class AddMovieReviewModalBody extends StatelessWidget {
  final Movies movies;

  const AddMovieReviewModalBody({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          30.verticalGap,
          Center(
            child: Text('Add Review',
                style: CoolMoviesTextStyle.header.pageTitle1),
          ),
          20.verticalGap,
          CustomTextInputField.text(
            inputController:
                context.read<MovieReviewViewmodel>().form.titleController,
            labelText: 'Title',
            hintText: 'Title',
          ),
          20.verticalGap,
          CustomTextInputField.text(
            inputController:
                context.read<MovieReviewViewmodel>().form.descriptionController,
            labelText: 'Review',
            hintText: 'Review',
          ),
          20.verticalGap,
          CustomTextInputField.text(
            keyboardType: TextInputType.number,
            inputController:
                context.read<MovieReviewViewmodel>().form.ratingController,
            labelText: 'Rating',
            hintText: 'Rating',
          ),
          30.verticalGap,
          BlocBuilder<MovieReviewViewmodel, MovieReviewState>(
            builder: (context, state) {
              if (state is MoviesReviewAddSuccess) {
                Navigator.of(context);
                context.read<MoviesHomeViewmodel>().add(FetchMovies());
              }
              if (state is MoviesReviewAdding) {
                return AppButton.primary(
                  text: '',
                  onPressed: () {},
                  isLoading: true,
                );
              }
              return AppButton.primary(
                state: context.read<MovieReviewViewmodel>().form.validState,
                text: 'Add',
                onPressed: () => context.read<MovieReviewViewmodel>()
                  ..add(
                    AddMovieReview(
                      CreateMovieReviewModel(
                        title: context
                            .read<MovieReviewViewmodel>()
                            .form
                            .titleController
                            .controller
                            .text,
                        body: context
                            .read<MovieReviewViewmodel>()
                            .form
                            .descriptionController
                            .controller
                            .text,
                        rating: int.parse(context
                            .read<MovieReviewViewmodel>()
                            .form
                            .ratingController
                            .controller
                            .text),
                        movieId: movies.id.orEmpty,
                        userReviewerId: movies.movieReviewsByMovieId!.edges!
                            .first.node!.userByUserReviewerId!.id.orEmpty,
                      ),
                    ),
                  ),
              );
            },
          ),
        ],
      ),
    );
  }
}
