import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/src/ui/screen/scan_qr/scan_qr_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/loginScreen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Stack(
                  children: [
                    Assets.icons.icBackgroundSignin.image(
                      package: 'flutter_common',
                    ),
                    Assets.icons.icS.image(
                      package: 'flutter_common',
                    )
                  ],
                ),
                _buildMainContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogoSS() {
    var brightness = Theme.of(context).brightness;
    bool isDarkMode = brightness == Brightness.dark;
    debugPrint("theme using: $isDarkMode");
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppIcon.icon57(path: Assets.icons.icLogo.path),
        Space.w12(),
        isDarkMode
            ? Assets.icons.icShowSlingerDark
                .image(package: 'flutter_common', width: 225, height: 49)
            : Assets.icons.icShowSlinger
                .image(package: 'flutter_common', width: 225, height: 49)
      ],
    );
  }

  Widget _buildMainContent() {
    return Positioned(
      top: MediaQuery.sizeOf(context).height / 2,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height / 2,
        decoration: BoxDecoration(
            border: Border.all(
              color: context.color.background,
            ),
            color: context.color.background,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Space.h36(),
            AppInputPhoneNumber(
                title: Localization.current.lbl_user_name),
            Space.h16(),
            AppInputPassword(
                title: Localization.current.lbl_password),
            Space.h5(),
            Text(Localization.current.lbl_forgot_password,
                style: context.textStyle.textMdRegular.copyWith(
                    color: context.color.colorText01
                )),
            Space.h50(),
            AppButton.primaryLarge(
              label: Localization.current.lbl_signin,
              onPressed: () {
                Navigator.of(context).popAndPushNamed(ScanQRScreen.routeName);
              },
            ),
            Space.h8(),
            Visibility(
                visible: false,
                child: Text(
                  'Loi roi',
                  style: context.textStyle.textSmallSemiBold
                      .copyWith(color: context.color.colorError),
                )),
            Space.h8(),
            _buildLogoSS(),
            Space.h16(),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: Localization.current.lbl_agree,
                  style: context.textStyle.textSmallRegular.copyWith(
                    color: context.color.colorText,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: Localization.current.lbl_term,
                      style:
                      context.textStyle.textSmallRegular.copyWith(
                        color: context.color.blue,
                      ),
                    ),
                    TextSpan(
                      text: Localization.current.lbl_and,
                      style:
                      context.textStyle.textSmallRegular.copyWith(
                        color: context.color.colorText,
                      ),
                    ),
                    TextSpan(
                      text: Localization.current.lbl_privacy,
                      style:
                      context.textStyle.textSmallRegular.copyWith(
                        color: context.color.blue,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
