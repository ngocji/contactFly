import 'package:flutter/services.dart';
import 'package:flutter_widget/flutter_widget.dart';

import '../../../flutter_common.dart';
import 'clear_icon.dart';

class AppInputPassword extends StatefulWidget {
  final Key? inputFieldKey;
  final String title;
  final String? hint;
  final Widget? errorWidget;
  final String? errorMessage;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final BoxDecoration? borderDecoration;
  final InputDecoration? inputDecoration;
  final TextStyle? titleStyle;
  final TextStyle? textInputStyle;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  final double widthInputField;
  final double heightInputField;
  final bool readOnly;
  final bool enabled;
  final bool hiddenTitle;
  final EdgeInsetsGeometry? padding;
  final TextCapitalization textCapitalization;
  final bool required;

  const AppInputPassword({
    super.key,
    this.inputFieldKey,
    required this.title,
    this.hint,
    this.errorWidget,
    this.errorMessage,
    this.keyboardType = TextInputType.visiblePassword,
    this.controller,
    this.focusNode,
    this.onFieldSubmitted,
    this.onSaved,
    this.onChanged,
    this.onTap,
    this.borderDecoration,
    this.inputDecoration,
    this.titleStyle,
    this.textInputStyle,
    this.hintStyle,
    this.inputFormatters,
    this.widthInputField = double.infinity,
    this.heightInputField = 48,
    this.readOnly = false,
    this.enabled = true,
    this.hiddenTitle = false,
    this.padding,
    this.textCapitalization = TextCapitalization.none,
    this.required = true,
  });

  @override
  State<AppInputPassword> createState() => _AppInputPasswordState();
}

class _AppInputPasswordState extends State<AppInputPassword> {
  final ValueNotifier<bool> _obscure = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _obscure,
        builder: (context, value, _) {
          return AppInputField(
            inputFieldKey: widget.inputFieldKey,
            title: widget.title,
            hint: widget.hint,
            // prefix: AppIcon.icon20(
            //   path: Assets.icons.icPassword.path,
            //   color: context.color.black04,
            // ),
            suffix: GestureDetector(
              onTap: () => _obscure.value = !_obscure.value,
              child: AppIcon.icon20(
                path: value
                    ? Assets.icons.icOpenEye.path
                    : Assets.icons.icOpenEye.path,
              ),
            ),
            errorWidget: widget.errorWidget,
            errorMessage: widget.errorMessage,
            keyboardType: widget.keyboardType,
            controller: widget.controller,
            focusNode: widget.focusNode,
            onFieldSubmitted: widget.onFieldSubmitted,
            onSaved: widget.onSaved,
            onChanged: widget.onChanged,
            onTap: widget.onTap,
            borderDecoration: widget.borderDecoration,
            inputDecoration: widget.inputDecoration,
            titleStyle: widget.titleStyle,
            textInputStyle: widget.textInputStyle,
            hintStyle: widget.hintStyle,
            inputFormatters: widget.inputFormatters,
            maxLines: 1,
            widthInputField: widget.widthInputField,
            heightInputField: widget.heightInputField,
            obscureText: value,
            readOnly: widget.readOnly,
            enabled: widget.enabled,
            hiddenTitle: widget.hiddenTitle,
            padding: widget.padding,
            textCapitalization: widget.textCapitalization,
            required: widget.required,
            clearIcon: const ClearIcon(),
          );
        });
  }
}
