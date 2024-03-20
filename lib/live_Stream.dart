import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LivePage extends StatefulWidget {
  final String liveID;
  final bool isHost;

  const LivePage({Key? key, required this.liveID, this.isHost = false}) : super(key: key);

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {

  var id1 = "id1";
  var id2 = "id2";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: 482099677,// Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: "54ff05ced3afe95754a5fa944f4281fd931eb6d99758d073dad185919ac7c0d6",// Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID:widget.isHost ? id1 :id2,
        userName: 'new',
        liveID: widget.liveID,
        config: widget.isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}