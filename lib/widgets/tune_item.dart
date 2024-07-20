import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // expanded should only be on colum or ror something flex
      child: GestureDetector(
        onTap: () {
          tune.playSound();
          // final player = AudioPlayer();
          // player.play(AssetSource(tune.sound));
        },
        child: Container(
          color: tune.color,
          // height: 100,
        ),
      ),
    );
  }
}
