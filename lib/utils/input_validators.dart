class InputValidators {
  static String? validateTitle(String? value) {
    if (value == null || value.isEmpty) {
      return "Title is required";
    }

    return null;
  }

  static String? validateReview(String? value) {
    if (value == null || value.isEmpty) {
      return "Review is required";
    }

    return null;
  }

  static String? validateRating(String? value) {
    if (value == null || value.isEmpty) {
      return "Rating is required";
    }

    return null;
  }
}
