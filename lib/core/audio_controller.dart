import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

/// [AudioController] class.
class AudioController extends StatefulWidget {
  /// [AudioController] Constructor.
  const AudioController({super.key});

  @override
  State<AudioController> createState() => _AudioControllerState();
}

class _AudioControllerState extends State<AudioController> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _audioPlayer.setReleaseMode(ReleaseMode.stop);
    _audioPlayer.setSource(AssetSource('sounds/obi-wan-hello-there.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await _audioPlayer.resume();
      },
      child: const Text('Hello There!'),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
