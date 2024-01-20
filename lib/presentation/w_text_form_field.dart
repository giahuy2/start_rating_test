import 'package:flutter/material.dart';
import 'package:flutter_rating_app/core/extensions.dart';

class WTextFormField extends StatefulWidget {
  const WTextFormField({
    super.key,
    this.controller,
    this.prefixIcon,
    this.hint,
    this.textInputType,
    this.obscureText,
    this.textInputAction,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.focusNode,
    this.prefixSelectedIcon,
    this.error,
  });

  const WTextFormField.email({
    super.key,
    this.controller,
    this.prefixIcon,
    this.hint,
    this.textInputType = TextInputType.emailAddress,
    this.textInputAction = TextInputAction.next,
    this.obscureText,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.focusNode,
    this.prefixSelectedIcon,
    this.error,
  });

  const WTextFormField.password({
    super.key,
    this.controller,
    this.prefixIcon,
    this.hint,
    this.textInputType = TextInputType.visiblePassword,
    this.textInputAction = TextInputAction.done,
    this.obscureText = true,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.focusNode,
    this.prefixSelectedIcon,
    this.error,
  });

  final TextEditingController? controller;

  // Using Assets Generator but can not provide svg or png for constructor
  final Widget? prefixIcon;
  final Widget? prefixSelectedIcon;
  final String? hint;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final FocusNode? focusNode;
  final String? error;
  final Function()? onTap;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  @override
  State<WTextFormField> createState() => _WTextFormFieldState();
}

class _WTextFormFieldState extends State<WTextFormField> {
  Widget? _prefixIcon;
  bool? _obscureText;

  @override
  void initState() {
    super.initState();
    widget.focusNode?.addListener(_onFocusChange);
    _prefixIcon ??= widget.prefixIcon;
    _obscureText ??= widget.obscureText;
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller?.dispose();
    widget.focusNode?.removeListener(_onFocusChange);
  }

  void _onFocusChange() {
    if (widget.focusNode == null) return;
    setState(() {
      if (widget.focusNode!.hasFocus) {
        _prefixIcon = widget.prefixSelectedIcon;
      } else {
        _prefixIcon = widget.prefixIcon;
      }
    });
  }

  void onTapShowHidePass() {
    if (_obscureText == null) return;
    setState(() {
      _obscureText = !_obscureText!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: context.getTextTheme().bodyMedium?.copyWith(color: Colors.black),
      textAlign: TextAlign.left,
      controller: widget.controller,
      autocorrect: false,
      enableSuggestions: false,
      obscureText: _obscureText ?? false,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      textInputAction: widget.textInputAction,
      onTap: widget.onTap,
      focusNode: widget.focusNode,
      decoration: InputDecoration(
        isDense: false,
        hintText: widget.hint,
        hintStyle: context.getTextTheme().bodyMedium?.copyWith(),
        contentPadding: const EdgeInsets.all(16.0),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(width: 0.8, color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(width: 0.8, color: Colors.blue),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(width: 0.8, color: Colors.blue),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(width: 0.8, color: Colors.blue),
        ),
        errorMaxLines: 1,
        errorText: widget.error,
        errorStyle: context.getTextTheme().bodySmall?.copyWith(color: Colors.red),
        prefixIcon: _prefixIcon,
      ),
    );
  }
}
