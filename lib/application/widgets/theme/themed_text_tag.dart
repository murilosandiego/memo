import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:layoutr/common_layout.dart';
import 'package:memo/application/theme/theme_controller.dart';
import 'package:memo/application/widgets/text_tag.dart';

/// A `TextTag` instance that follows the primary specs
///
/// To style itself, this `TextTag` implementation not only needs to be a child of `MaterialApp`, but also in be a
/// context where a `ThemeController` is provided as well.
class PrimaryTextTag extends HookWidget {
  const PrimaryTextTag(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => TextTag(
        text,
        backgroundColor: theme.primarySwatch,
        padding: context.allInsets(Spacing.xxSmall),
        textStyle: Theme.of(context).textTheme.overline,
      );
}

/// A `TextTag` instance that follows the secondary specs
///
/// To style itself, this `TextTag` implementation not only needs to be a child of `MaterialApp`, but also in be a
/// context where a `ThemeController` is provided as well.
class SecondaryTextTag extends HookWidget {
  const SecondaryTextTag(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => TextTag(
        text,
        backgroundColor: theme.secondarySwatch,
        padding: context.allInsets(Spacing.xxSmall),
        textStyle: Theme.of(context).textTheme.overline,
      );
}
