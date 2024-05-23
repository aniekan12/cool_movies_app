import 'package:coolmovies/common/theme/color/cool_movies_colors.dart';
import 'package:coolmovies/common/theme/size_config.dart';
import 'package:coolmovies/common/typography/text_styles.dart';
import 'package:flutter/material.dart';

class AppButton {
  static Widget primary(
      {required String text,
      ValueNotifier<bool>? state,
      bool isLoading = false,
      required VoidCallback onPressed}) {
    return _AppButton(
      text: text,
      isFilled: true,
      isLoading: isLoading,
      state: state,
      onPressed: onPressed,
    );
  }

  static Widget secondary(
      {required String text,
      Color? color,
      ValueNotifier<bool>? state,
      bool isLoading = false,
      required VoidCallback onPressed}) {
    return _AppButton(
      text: text,
      state: state,
      color: color,
      isFilled: false,
      isLoading: isLoading,
      onPressed: onPressed,
    );
  }
}

class _AppButton extends StatelessWidget {
  final String text;
  final ValueNotifier<bool>? state;
  final VoidCallback onPressed;
  final Color? color;
  final bool isFilled;
  final bool isLoading;

  const _AppButton({
    super.key,
    required this.text,
    this.state,
    this.color,
    required this.isFilled,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    const loader = Padding(
      padding: EdgeInsets.only(right: 16),
      child: SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(CoolMoviesColors.white),
        ),
      ),
    );

    Widget filledButton = ValueListenableBuilder(
        valueListenable: state ?? ValueNotifier(false),
        builder: (context, value, child) {
          final bgColor = color ?? CoolMoviesColors.primary;
          return ElevatedButton(
            onPressed: value ? (isLoading ? () {} : onPressed) : null,
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shadowColor: !isLoading ? null : Colors.transparent,
              splashFactory: isLoading ? NoSplash.splashFactory : null,
              foregroundColor: CoolMoviesColors.white,
              backgroundColor: bgColor,
              minimumSize: const Size(double.infinity, 46),
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.1, vertical: 12.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.02),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading)
                  loader
                else
                  Text(text,
                      style: CoolMoviesTextStyle.body.infoText
                          .copyWith(fontSize: SizeConfig.pxToTextSize(11.5))),
              ],
            ),
          );
        });

    Widget ghostButton = ValueListenableBuilder(
        valueListenable: state ?? ValueNotifier(false),
        builder: (context, value, child) {
          return OutlinedButton(
            onPressed: value ? onPressed : null,
            style: OutlinedButton.styleFrom(
              elevation: 0,
              side: BorderSide(color: color ?? CoolMoviesColors.primary),
              foregroundColor: color ?? CoolMoviesColors.primary,
              minimumSize: const Size(double.infinity, 46),
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.1, vertical: 12.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.02),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading)
                  loader
                else
                  Text(text,
                      style: CoolMoviesTextStyle.body.small.copyWith(
                          fontSize: SizeConfig.pxToTextSize(12.28),
                          color: color ?? CoolMoviesColors.primary)),
              ],
            ),
          );
        });

    return isFilled ? filledButton : ghostButton;
  }
}
