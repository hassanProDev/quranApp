import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  late AudioPlayer player;
  late AudioCache cache;
  Duration positionDuration = Duration();
  Duration durationLength = Duration();
  bool isPlay = false;
  int suraIndex=0;
  List<String> quranSound=['112.mp3','113.mp3','114.mp3'];
  List<String> suraNameSound=['سورة الاخلاص','سورة الفلق','سورة الناس'];
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    cache = AudioCache(fixedPlayer: player);
    cache.loadAll(['112.mp3','113.mp3','114.mp3']);
    player.onAudioPositionChanged.listen((event) {
      positionDuration = event;
      setState(() {});
    });
    player.onDurationChanged.listen((event) {
      durationLength = event;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 64.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              suraNameSound[suraIndex],
              style: Theme.of(context).textTheme.headline2,
            ),
            Image.asset('assets/images/radioimg.png'),
            Text(
              'اذاعة القران الكريم',
              style: Theme.of(context).textTheme.headline2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('${positionDuration.inSeconds}'),
                Slider(
                  value: positionDuration.inSeconds.toDouble(),
                  max: durationLength.inSeconds.toDouble(),
                  onChanged: (value) {
                    player.seek(Duration(seconds: value.toInt()));
                    setState(() {});
                  },
                ),
                Text('${durationLength.inSeconds}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    // if(positionDuration-Duration(seconds: 10)<Duration(seconds: 0)){
                    //   player.seek(Duration(seconds: 0));
                    //   setState((){});
                    // }else{
                    //   player.seek(positionDuration-Duration(seconds: 5));
                    //   setState((){});
                    // }
                    suraIndex--;
                    if(suraIndex==0){
                      suraIndex=quranSound.length-1;
                      cache.play(quranSound[suraIndex]);
                    }
                    isPlay=true;
                    cache.play(quranSound[suraIndex]);
                    print(suraIndex);
                    setState((){});
                  },
                  child: Image.asset('assets/images/Icon metro-next.png'),
                ),
                InkWell(
                  onTap: () {
                    if (isPlay) {
                      isPlay = false;
                      player.pause();
                      setState(() {});
                    } else {
                      isPlay = true;
                      cache.play(quranSound[suraIndex]);
                      setState(() {});
                    }
                    print(suraIndex);

                  },
                  child: isPlay
                      ? Icon(
                          Icons.pause,
                          size: 35,
                        )
                      : Image.asset('assets/images/Icon awesome-play.png'),
                ),
                InkWell(
                  onTap: (){
                    // if(positionDuration+Duration(seconds: 10)>durationLength){
                    //   player.seek(durationLength);
                    //   setState((){});
                    // }else{
                    //   player.seek(positionDuration+Duration(seconds: 5));
                    //   setState((){});
                    // }
                    suraIndex++;
                    if(suraIndex==quranSound.length){
                      suraIndex=0;
                    }
                    isPlay=true;
                    cache.play(quranSound[suraIndex]);
                    setState((){});
                    print(suraIndex);
                  },
                  child: Image.asset('assets/images/Icon metro-previos.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
