import 'package:flutter/material.dart';

class AudioList extends StatelessWidget {
  const AudioList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;
    _buildTile(
        {required IconData icon,
        required String text,
        required String duration}) {
      return Container(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        height: dSize.height * .05,
        width: dSize.width * .85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon),
            const SizedBox(width: 35),
            Text(text, style: const TextStyle(fontSize: 16)),
            const Spacer(),
            Text(duration, style: const TextStyle(fontSize: 16)),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          _buildTile(
            icon: Icons.play_arrow,
            text: 'Behaviour of the mind',
            duration: '2:04',
          ),
          _buildTile(
            icon: Icons.lock_outline,
            text: 'Your inner voice',
            duration: '1:56',
          ),
          _buildTile(
            icon: Icons.lock_outline,
            text: 'Embrace your emotions',
            duration: '3:12',
          ),
          _buildTile(
            icon: Icons.lock_outline,
            text: 'Letting go emotionally',
            duration: '2:57',
          ),
          _buildTile(
            icon: Icons.lock_outline,
            text: 'Facing your fears',
            duration: '3:04',
          ),
        ],
      ),
    );
  }
}
