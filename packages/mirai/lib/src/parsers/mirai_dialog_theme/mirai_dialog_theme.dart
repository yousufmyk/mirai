import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/utils/color_utils.dart';

part 'mirai_dialog_theme.freezed.dart';
part 'mirai_dialog_theme.g.dart';

@freezed
class MiraiDialogTheme with _$MiraiDialogTheme {
  const factory MiraiDialogTheme({
    String? backgroundColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    MiraiBorder? shape,
    MiraiAlignmentGeometry? alignment,
    MiraiTextStyle? titleTextStyle,
    MiraiTextStyle? contentTextStyle,
    MiraiEdgeInsets? actionsPadding,
    String? iconColor,
  }) = _MiraiDialogTheme;

  factory MiraiDialogTheme.fromJson(Map<String, dynamic> json) =>
      _$MiraiDialogThemeFromJson(json);
}

extension MiraiDialogThemeParser on MiraiDialogTheme {
  DialogTheme? get parse {
    return DialogTheme(
      backgroundColor: backgroundColor.toColor,
      elevation: elevation,
      shadowColor: shadowColor.toColor,
      surfaceTintColor: surfaceTintColor.toColor,
      shape: shape?.parse,
      alignment: alignment?.parse,
      titleTextStyle: titleTextStyle?.parse,
      contentTextStyle: contentTextStyle?.parse,
      actionsPadding: actionsPadding.parse,
      iconColor: iconColor.toColor,
    );
  }
}