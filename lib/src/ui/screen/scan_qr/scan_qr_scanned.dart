import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/src/ui/screen/scan_qr/customer_info_widget.dart';

class ScanQRScannedScreen extends StatefulWidget {
  const ScanQRScannedScreen({super.key});

  @override
  State<ScanQRScannedScreen> createState() => _ScanQRScannedScreenState();
}

class _ScanQRScannedScreenState extends State<ScanQRScannedScreen> {
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
              AppIconWithText.warning(
                  label: Localization.current.lbl_scanned),
              Space.h16(),
              CardContainer(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Center(
                child: Text(
                  Localization.current.lbl_code_scanned,
                  style: context.textStyle.textMdMedium.copyWith(
                      color: context.color.colorTextField, fontSize: 18),
                ),
              ),),
              Space.h16(),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Text(
                  Localization.current.lbl_scanned,
                  style: context.textStyle.textMdMedium.copyWith(
                      color: context.color.colorTextField, fontSize: 16),
                ),
              ),
              Space.h16(),
              _buildScannedHistory(context),
              Space.h16(),
              AppButton(label: Localization.current.lbl_okay),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildScannedHistory(BuildContext context) {
    return CardContainer(
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 12),
          shrinkWrap: true,
          itemCount: 2,
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
