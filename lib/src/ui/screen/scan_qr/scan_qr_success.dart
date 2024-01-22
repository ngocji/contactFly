import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/src/ui/screen/scan_qr/customer_info_widget.dart';

class ScanQRSuccessScreen extends StatefulWidget {
  const ScanQRSuccessScreen({super.key});

  @override
  State<ScanQRSuccessScreen> createState() => _ScanQRSuccessScreenState();
}

class _ScanQRSuccessScreenState extends State<ScanQRSuccessScreen> {
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
              AppIconWithText.success(label: Localization.current.lbl_success),
              Space.h16(),
              CustomerInfoWidget(),
              Space.h16(),
              _buildTicketInfo(context),
              Space.h16(),
              AppButton(label: Localization.current.lbl_scan('3')),
              Space.h16(),
              Text(
                Localization.current.lbl_scanned,
                style: context.textStyle.textMdMedium.copyWith(
                    color: context.color.colorTextField, fontSize: 14),
              ),
              Space.h16(),
              _buildScannedHistory(context),
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
          padding: const EdgeInsets.only(top:4),
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
