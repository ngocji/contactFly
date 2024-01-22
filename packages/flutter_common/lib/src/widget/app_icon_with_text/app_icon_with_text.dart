import 'package:flutter_widget/flutter_widget.dart';

import '../../../flutter_common.dart';

enum AppIconType {
  success,
  invalid,
  scanned,
}

class AppIconWithText extends StatelessWidget {
  final String path;
  final String label;
  final AppIconType appIconType;

  const AppIconWithText(
      {super.key,
      required this.path,
      required this.label,
      required this.appIconType});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: getColorByType(context),
        border: getBorderByType(context),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: AppIcon.icon64(path: path),
            ),
          ),
          Text(label, style: context.textStyle.textXlBold.copyWith(
              color: context.color.white,
              fontSize: 44
          ),),
        ],
      ),
    );
  }

  factory AppIconWithText.success({
    required String label
}) => AppIconWithText(
    label: label,
    path: Assets.icons.icSuccess.path,
    appIconType: AppIconType.success,
  );

  factory AppIconWithText.invalid({
    required String label
  }) => AppIconWithText(
    label: label,
    path: Assets.icons.icError.path,
    appIconType: AppIconType.invalid,
  );

  factory AppIconWithText.warning({
    required String label
  }) => AppIconWithText(
    label: label,
    path: Assets.icons.icWarning.path,
    appIconType: AppIconType.scanned,
  );

  Color getColorByType(BuildContext context) {
    switch (appIconType) {
      case AppIconType.success:
        return context.color.green;
      case AppIconType.invalid:
        return context.color.red;
      case AppIconType.scanned:
        return context.color.orange;
    }
  }

  BoxBorder getBorderByType(BuildContext context) {
    switch (appIconType) {
      case AppIconType.success:
        return Border.all(
          width: 1,
          color: context.color.green,
        );
      case AppIconType.invalid:
        return Border.all(
          width: 1,
          color: context.color.red,
        );
      case AppIconType.scanned:
        return Border.all(
          width: 1,
          color: context.color.orange,
        );
    }
  }
}
