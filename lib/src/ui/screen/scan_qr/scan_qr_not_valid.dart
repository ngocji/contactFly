import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/src/ui/screen/scan_qr/customer_info_widget.dart';

class ScanQRNotValidScreen extends StatefulWidget {
  const ScanQRNotValidScreen({super.key});

  @override
  State<ScanQRNotValidScreen> createState() => _ScanQRNotValidScreenState();
}

class _ScanQRNotValidScreenState extends State<ScanQRNotValidScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.background,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Space.h50(),
              AppIconWithText.invalid(
                  label: Localization.current.lbl_not_valid),
              Space.h16(),
              CustomerInfoWidget(),
              Space.h16(),
              Text(
                Localization.current.lbl_only_valid,
                style: context.textStyle.textMdMedium.copyWith(
                    color: context.color.colorTextField, fontSize: 14),
              ),
              Space.h16(),
              CardContainer(
                  width: MediaQuery.sizeOf(context).width,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Depeche Mode Live',
                        style: context.textStyle.textMdMedium.copyWith(
                            color: context.color.colorTextField, fontSize: 20),
                      ),
                      Text(
                        'Sat, Dec 13, 2023',
                        style: context.textStyle.textMdMedium.copyWith(
                            color: context.color.colorTextField, fontSize: 14),
                      ),
                      Text(
                        '8:30 pm',
                        style: context.textStyle.textMdMedium.copyWith(
                            color: context.color.colorTextField, fontSize: 14),
                      ),
                      Text(
                        'General Admission (2)',
                        style: context.textStyle.textMdMedium.copyWith(
                            color: context.color.colorTextField, fontSize: 14),
                      ),
                    ],
                  )),
              Space.h16(),
              AppButton(label: Localization.current.lbl_okay),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTicketInfo(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: context.color.backgroundCard,
          border: Border.all(
            width: 1,
            color: context.color.backgroundCard,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Seat A22',
                  style: context.textStyle.textMdMedium.copyWith(
                      color: context.color.colorTextField, fontSize: 14),
                ),
                AppDropdown(
                  width: 100,
                  colorBg: context.color.backgroundField,
                  textColor: context.color.colorTextField,
                )
              ],
            ),
            Space.h16(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'General Admission',
                  style: context.textStyle.textMdMedium.copyWith(
                      color: context.color.colorTextField, fontSize: 14),
                ),
                AppDropdown(
                  width: 100,
                  colorBg: context.color.backgroundField,
                  textColor: context.color.colorTextField,
                )
              ],
            ),
            Space.h16(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balcony',
                  style: context.textStyle.textMdMedium.copyWith(
                      color: context.color.colorTextField, fontSize: 14),
                ),
                AppDropdown(
                  width: 100,
                  colorBg: context.color.backgroundField,
                  textColor: context.color.colorTextField,
                )
              ],
            )
          ],
        ));
  }

  Widget _buildScannedHistory(BuildContext context) {
    return CardContainer(
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 12),
          shrinkWrap: true,
          itemCount: 14,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    maxLines: 2,
                    'General Admission @ 1:15 pm',
                    style: context.textStyle.textMdMedium.copyWith(
                        color: context.color.colorTextField, fontSize: 14),
                  ),
                  AppIcon.icon24(
                    path: Assets.icons.icTicked.path,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
