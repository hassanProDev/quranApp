import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/tabs/quran/sura_data.dart';
import 'package:islami_app/theming/my_them_mood.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeNAme = 'suraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verse = [];
  AudioPlayer player = AudioPlayer();
  AudioCache cache = AudioCache();
  Duration positionDuration = Duration();
  Duration durationLen = Duration();
  List<String> ayatSound = ['1121.mp3', '1122.mp3', '1123.mp3', '1124.mp3'];
  List<String> repeatAyatGroup = [];

  int? getAyaIndex;
  bool isPLay = false;

  // int suraIndex;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    cache = AudioCache(fixedPlayer: player);
    cache.loadAll(['1121.mp3', '1122.mp3', '1123.mp3', '1124.mp3']);
    player.onDurationChanged.listen((event) {
      durationLen = event;
    });
    player.onAudioPositionChanged.listen((event) {
      positionDuration = event;
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SuraDetailsModel suraDetailsModel =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsModel;
    if (verse.isEmpty) {
      loadFile(suraDetailsModel.suraIndex);
    }
    return SafeArea(
      child: Stack(children: [
        Image.asset(
          'assets/mainbg.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              'اسلامي',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 48),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              decoration: BoxDecoration(
                color: MyTheme.whiteColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Text(
                    '${suraDetailsModel.suraName}',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 64.0, vertical: 16),
                    child: Container(
                      height: 3,
                      color: MyTheme.primaryColor,
                      // padding: EdgeInsets.symmetric(horizontal: 50),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: verse.length,
                      itemBuilder: (_, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            repeatAyat(index);
                          },
                          child: Card(
                            elevation: 5,
                            child: Text(
                              '${verse[index]}',
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  void loadFile(index) async {
    String content =
        await rootBundle.loadString('assets/sura/${index + 1}.txt');
    content.split('\n');
    List<String> lines = [];
    lines.add(content);
    verse = lines[0].split('\n');
    setState(() {});
  }

  void repeatAyat(index) {
    // getAyaIndex=index;
    // print(getAyaIndex);
    for (int i = index; i < ayatSound.length; i++) {
      int saveStart = index;
      for (int ayaRepeat = 0; ayaRepeat < 3; ayaRepeat++) {
        cache.play(ayatSound[i]);
        // setState(() {});
        // for(int i=0;i<1000;i++){
        //
        // }
        // for (positionDuration.inSeconds; positionDuration.inSeconds <= durationLen.inSeconds;) {
        //   player.seek(positionDuration);
        // }
      }
      if (saveStart == i) {
        repeatAyatGroup.add(ayatSound[i]);
      } else {
        repeatAyatGroup.add(ayatSound[i]);
        for (int groupRepeat = 0; groupRepeat < 3; groupRepeat++) {
          for (int indexofGroup = 0;
              indexofGroup < repeatAyatGroup.length;
              indexofGroup++) {
            cache.play('${repeatAyatGroup[indexofGroup]}');
          }
        }
      }
    }
  }
  // void didChangeDependencies(){
  //   super.didChangeDependencies();
  //   // player.onDurationChanged.
  // }

  @override
  void dispose() {
    super.dispose();
player.dispose();  }
//
}
