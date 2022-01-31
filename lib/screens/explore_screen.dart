import 'package:flutter/material.dart';

import '/clippers/first_clipper.dart';
import '/widgets/audio_list.dart';

class ExploreScreen extends StatelessWidget {
  static const routeName = 'explore';
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              height: dSize.height * .55,
              width: dSize.width,
              child: ClipPath(
                clipper: FirstClipper(),
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          const SizedBox(width: 140),
                          IconButton(
                            icon: const Icon(
                              Icons.message_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Killing Anxiety',
                            style: TextStyle(
                              fontSize: 35,
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Calm your anxieties, reduce tension and increase body awareness',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: dSize.height * .31,
              left: dSize.width - (dSize.width / 1.33),
              right: dSize.width - (dSize.width / 1.33),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 10,
                child: Container(
                  height: dSize.height * .24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.fineartamerica.com/images-medium-large-5/forest-stream-brandon-smith.jpg'),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: dSize.height * .24,
              left: dSize.width - (dSize.width / 1.3),
              right: dSize.width - (dSize.width / 1.3),
              child: Image.network(
                'https://pluspng.com/img-png/yoga-poses-png-hd-have-an-enquiry-1000.png',
                fit: BoxFit.cover,
                height: dSize.height * .28,
              ),
            ),
            Positioned(
              bottom: dSize.height * .12,
              height: dSize.height * .251,
              width: dSize.width,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Text('by Tony Lane', style: TextStyle(fontSize: 18)),
                  ),
                  Expanded(child: AudioList()),
                ],
              ),
            ),
            Positioned(
              bottom: dSize.height * .05,
              width: dSize.width,
              child: Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey[900],
                ),
                child: const Center(
                  child: Icon(Icons.play_arrow, size: 50, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              height: dSize.height * .09,
              width: dSize.width,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('2:30'),
                    Text(
                      'Rainforest-Relaxing',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    Text('-0:50'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
