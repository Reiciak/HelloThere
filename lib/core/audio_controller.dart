import 'package:audioplayers/audioplayers.dart';

/// class [AudioController] is responsible for initializing and
/// playing the audio.
class AudioController {

  final AudioPlayer _audioPlayer = AudioPlayer();

  /// [pathToAudioSource] variable contains the path to the audio file
  final String pathToAudioSource;

  /// [AudioController] constructor initializes the audio player
  AudioController(this.pathToAudioSource) {
    initAudio();
  }

  /// method [initAudio] initializes the audio player -> sets the source
  /// if it exist
  Future<void> initAudio() async {
    try {
      await _audioPlayer.setSource(AssetSource(pathToAudioSource));
      await _audioPlayer.setReleaseMode(ReleaseMode.stop);
    } catch (e) {
      dispose();
      throw Exception('Error initializing audio player: $e');
    }
  }

  /// method [playAudio] plays the audio file
  Future<void> playAudio() async {
    await _audioPlayer.resume();
  }

  /// method [dispose] disposes the audio player
  void dispose() {
    _audioPlayer.dispose();
  }

}
