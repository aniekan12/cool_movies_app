import 'package:coolmovies/common/theme/color_provider.dart';
import 'package:coolmovies/common/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension XBuildContext on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);

  ColorProvider get colorProvider => ColorProvider.of(this);

  void hideKeyboard() {
    FocusScope.of(this).requestFocus(FocusNode());
  }
}

extension AppSpacer on num {
  Widget get verticalGap => SizedBox(
        height: toDouble(),
      );

  Widget get horizontalGap => SizedBox(
        width: toDouble(),
      );

  double get pxToHeight => SizeConfig.pxToHeight(toDouble());

  double get pxToWidth => SizeConfig.pxToWidth(toDouble());

  double get radius => SizeConfig.radius(toDouble());
}

extension XString on String? {
  String get orEmpty => this ?? '';

  String get toTitleCase {
    return (this ?? '').split(' ').map((word) {
      if (word.isEmpty) {
        return word;
      }
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  bool get isEmail {
    final emailPattern = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailPattern.hasMatch(this ?? '');
  }

  String get cleanPhoneNumberForInput {
    if (this == null) return '';
    return '0${this?.replaceAll(RegExp(r'[^\d]'), '')}';
  }

  String get cleanAmountForInput {
    if (this == null) return ''; // Ensure null safety with a null check
    return '${this?.replaceAll(RegExp(r'[^\d.]'), '')}'; // Allow decimal point in addition to digits
  }

  String prepend(String prefix) {
    return '$prefix$this';
  }

  String get toReadableDate {
    final convertedDate = DateTime.tryParse(orEmpty);
    if (convertedDate == null) {
      return '';
    }
    final dateFormat = DateFormat('d MMM, yyyy h:mm:ss a');
    return dateFormat.format(convertedDate);
  }
}

extension XNum on num {
  // Duration get milliseconds => Duration(milliseconds: toInt());
  // Duration get seconds => Duration(seconds: toInt());
  // Duration get minutes => Duration(minutes: toInt());
  // Duration get hours => Duration(hours: toInt());
  // Duration get days => Duration(days: toInt());
}

extension WeekDaysEx on int {
  String get month {
    const List<String> months = <String>[
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return months[this];
  }

  String get shortWeekDay {
    const List<String> shortWeekdays = <String>[
      'Sun',
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
    ];
    return shortWeekdays[this];
  }
}

extension ListEx<T> on List<T> {
  List<T> intersperse(T element) {
    if (isEmpty) return [];
    return skip(1).fold([first], (acc, e) => [...acc, element, e]);
  }
}
