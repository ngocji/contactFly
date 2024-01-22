import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';

class CustomerInfoWidget extends StatelessWidget {
  const CustomerInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bill Latham',
            style: context.textStyle.textLgSemiBold.copyWith(
              color: context.color.colorTextField,
              fontSize: 24,
            ),
          ),
          FittedBox(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppListTile.descriptionAlignCenter(
                        description: '678-555-1234',
                        prefix: Assets.icons.icPhone.path),
                    AppListTile.descriptionAlignCenter(
                        description: 'Fri, Dec 3, 1:13 pm',
                        prefix: Assets.icons.icCalendarPng.path),
                  ],
                ),
                Space.w12(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppListTile.descriptionAlignCenter(
                        description: 'rock_this_town@gmail.com',
                        prefix: Assets.icons.icEmail.path),
                    AppListTile.descriptionAlignCenter(
                        description: 'Credit card ending in 0345',
                        prefix: Assets.icons.icCreditCard.path)
                  ],
                )
                    ],
                  ),
          )]
            ),
    );
  }
}
