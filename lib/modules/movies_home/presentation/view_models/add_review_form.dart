import 'package:coolmovies/modules/movies_home/presentation/widgets/app_textfield.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/input_form.dart';
import 'package:coolmovies/utils/input_validators.dart';

class AddReviewForm extends InputForm {
  final titleController =
      InputController(validator: InputValidators.validateTitle);
  final descriptionController =
      InputController(validator: InputValidators.validateReview);
  final ratingController =
      InputController(validator: InputValidators.validateRating);

  @override
  List<InputController> get inputControllers => [
        titleController,
        descriptionController,
        ratingController,
      ];

  @override
  bool isFormValid() {
    return inputControllers.every(
      (controller) => controller.isValid(),
    );
  }
}
