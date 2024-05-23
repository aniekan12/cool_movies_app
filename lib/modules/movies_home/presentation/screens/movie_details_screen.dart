import 'package:coolmovies/common/theme/size_config.dart';
import 'package:coolmovies/common/typography/text_styles.dart';
import 'package:coolmovies/modules/movies_home/data/models/create_movie_review_model.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/presentation/view_models/movie_review_viewmodel.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/app_button.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/app_textfield.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/image_widget.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/reviews_widget.dart';
import 'package:coolmovies/modules/widgets/cool_movies_app_bar.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movies movies;
  const MovieDetailsScreen({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
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
                        inputController: context
                            .read<MovieReviewViewmodel>()
                            .form
                            .titleController,
                        labelText: 'Title',
                        hintText: 'Title',
                      ),
                      20.verticalGap,
                      CustomTextInputField.text(
                        inputController: context
                            .read<MovieReviewViewmodel>()
                            .form
                            .descriptionController,
                        labelText: 'Review',
                        hintText: 'Review',
                      ),
                      20.verticalGap,
                      CustomTextInputField.textBox(
                        keyboardType: TextInputType.number,
                        inputController: context
                            .read<MovieReviewViewmodel>()
                            .form
                            .ratingController,
                        labelText: 'Rating',
                        hintText: 'Rating',
                      ),
                      30.verticalGap,
                      AppButton.primary(
                        state: context
                            .read<MovieReviewViewmodel>()
                            .form
                            .validState,
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
                                userReviewerId: movies
                                    .movieReviewsByMovieId!
                                    .edges!
                                    .first
                                    .node!
                                    .userByUserReviewerId!
                                    .id
                                    .orEmpty,
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: context.colorProvider.backgroundDefault,
      appBar: CoolMoviesAppBar.primary(title: 'Detail'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CoolMoviesImageWidget.fromUrl(
                imageUrl: movies.imgUrl.orEmpty,
                height: context.mq.size.height * 0.5,
                width: context.mq.size.width,
              ),
            ),
            10.verticalGap,
            Text(
              movies.title.orEmpty,
              style: CoolMoviesTextStyle.header.pageTitle1
                  .copyWith(color: context.colorProvider.cardTitleColor),
            ),
            10.verticalGap,
            Row(
              children: [
                Icon(Icons.calendar_month,
                    color: context.colorProvider.cardTitleColor),
                5.horizontalGap,
                Text(
                  '${movies.releaseDate.orEmpty.toReadableDate} ',
                  style: CoolMoviesTextStyle.body.infoText.copyWith(
                      fontSize: SizeConfig.pxToTextSize(14),
                      color: context.colorProvider.cardTitleColor),
                ),
              ],
            ),
            10.verticalGap,
            Divider(color: context.colorProvider.cardTitleColor),
            6.verticalGap,
            Center(
              child: Text(
                'Reviews',
                style: CoolMoviesTextStyle.header.mediumHeader
                    .copyWith(color: context.colorProvider.cardTitleColor),
              ),
            ),
            6.verticalGap,
            Divider(color: context.colorProvider.cardTitleColor),
            10.verticalGap,
            ListView.builder(
              itemCount: movies.movieReviewsByMovieId?.edges?.length ?? 0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ReviewWidget(
                    movieReviews:
                        movies.movieReviewsByMovieId!.edges![index].node!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
