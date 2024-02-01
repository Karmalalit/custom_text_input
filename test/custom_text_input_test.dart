import 'package:flutter_test/flutter_test.dart';
import 'package:custom_text_input/custom_text_input.dart';
import 'package:custom_text_input/custom_text_input_platform_interface.dart';
import 'package:custom_text_input/custom_text_input_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCustomTextInputPlatform
    with MockPlatformInterfaceMixin
    implements CustomTextInputPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CustomTextInputPlatform initialPlatform = CustomTextInputPlatform.instance;

  test('$MethodChannelCustomTextInput is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCustomTextInput>());
  });

  test('getPlatformVersion', () async {
    CustomTextInput customTextInputPlugin = CustomTextInput();
    MockCustomTextInputPlatform fakePlatform = MockCustomTextInputPlatform();
    CustomTextInputPlatform.instance = fakePlatform;

    expect(await customTextInputPlugin.getPlatformVersion(), '42');
  });
}
