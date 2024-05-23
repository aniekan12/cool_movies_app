import 'package:coolmovies/common/theme/color/cool_movies_colors.dart';
import 'package:coolmovies/common/theme/size_config.dart';
import 'package:coolmovies/common/typography/text_styles.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextInputField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enabled;
  final int? maxLines;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatter;
  final InputController? inputController;

  const CustomTextInputField._(
      {super.key,
      this.labelText,
      this.hintText,
      this.maxLines,
      this.enabled = true,
      this.prefixIcon,
      this.suffixIcon,
      this.validator,
      this.controller,
      this.obscureText = false,
      this.keyboardType,
      this.inputFormatter,
      this.inputController});

  factory CustomTextInputField.text({
    required InputController inputController,
    required String labelText,
    required String hintText,
    TextInputType? keyboardType,
  }) =>
      CustomTextInputField._(
        labelText: labelText,
        hintText: hintText,
        keyboardType: keyboardType,
        inputController: inputController,
      );
  factory CustomTextInputField.textBox({
    required InputController inputController,
    required String labelText,
    required String hintText,
    TextInputType? keyboardType,
  }) =>
      CustomTextInputField._(
        labelText: labelText,
        hintText: hintText,
        obscureText: false,
        keyboardType: keyboardType,
        inputController: null,
      );

  @override
  State<CustomTextInputField> createState() => _CustomTextInputFieldState();
}

class _CustomTextInputFieldState extends State<CustomTextInputField> {
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: CoolMoviesColors.greyBody, width: 0.7)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              12.verticalGap,
              Text(
                widget.labelText ?? '', // Label text inside the input field
                style: CoolMoviesTextStyle.body.small.copyWith(
                    color: CoolMoviesColors.textColor,
                    fontSize: SizeConfig.pxToTextSize(12),
                    height: 13.46.toLineHeight(SizeConfig.pxToTextSize(13.46))),
              ),
              SizedBox(
                height: 20,
                child: TextFormField(
                    maxLines: widget.maxLines ?? 1,
                    obscureText: widget.obscureText,
                    obscuringCharacter: '*',
                    controller:
                        widget.inputController?.controller ?? widget.controller,
                    validator: (error) {
                      final err = (widget.inputController?.validator ??
                              widget.validator)
                          ?.call(error);
                      Future.delayed(const Duration(milliseconds: 100), () {
                        setState(() {
                          errorMessage = err;
                        });
                      });
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: CoolMoviesTextStyle.header.smallNumber,
                    keyboardType: widget.keyboardType,
                    inputFormatters: widget.inputFormatter,
                    enabled: widget.enabled,
                    decoration: InputDecoration(
                      suffixIcon: widget.suffixIcon,
                      border: InputBorder.none,
                      hintText: widget.hintText,
                      hintStyle:
                          CoolMoviesTextStyle.header.smallNumber.copyWith(
                        color: CoolMoviesColors.grey.shade400,
                      ),
                    )),
              )
            ],
          ),
        ),
        2.verticalGap,
        if (errorMessage != null)
          Text(errorMessage!,
              style: CoolMoviesTextStyle.header.smallNumber.copyWith(
                color: Colors.red,
              ))
      ],
    );
  }
}

class InputController {
  final TextEditingController controller = TextEditingController();
  final String? Function(String?)? validator;

  InputController({this.validator});

  bool isValid() {
    return validator?.call(controller.text) == null;
  }
}
