import 'package:flutter_widget/flutter_widget.dart';

import '../../../flutter_common.dart';

class EventBanner extends StatelessWidget {
  final String image;
  final String eventName;
  final String time;

  const EventBanner(
      {super.key,
      required this.image,
      required this.eventName,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(Assets.icons.icEven.path,
                package: 'flutter_common', fit: BoxFit.fitWidth)),
        Positioned(
            bottom: 10,
            left: 10,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(eventName,
                    style: context.textStyle.textMdBold.copyWith(
                      color: context.color.white,
                      fontSize: 16,
                    )),
                Text(
                  time,
                  style: context.textStyle.textSmallRegular.copyWith(
                    color: context.color.white,
                    fontSize: 12,
                  ),
                )
              ],
            ))
      ],
    );
  }
}
