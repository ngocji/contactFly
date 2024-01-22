import 'package:flutter_test/flutter_test.dart';
import 'package:stripe_terminal/stripe_terminal.dart';
import 'package:stripe_terminal/stripe_terminal_platform_interface.dart';
import 'package:stripe_terminal/stripe_terminal_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStripeTerminalPlatform
    with MockPlatformInterfaceMixin
    implements StripeTerminalPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final StripeTerminalPlatform initialPlatform = StripeTerminalPlatform.instance;

  test('$MethodChannelStripeTerminal is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStripeTerminal>());
  });

  test('getPlatformVersion', () async {
    StripeTerminal stripeTerminalPlugin = StripeTerminal.instance;
    MockStripeTerminalPlatform fakePlatform = MockStripeTerminalPlatform();
    StripeTerminalPlatform.instance = fakePlatform;

  });
}
