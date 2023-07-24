import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key, required this.callID});
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 1685490894,
      appSign:
          'd21449a098a8a18b130c07bd22a5f9da940d4285742a78fbe7a25eaa13b34091',
      callID: callID,
      userID: userID,
      userName: userName,
      config: config,
    );
  }
}
