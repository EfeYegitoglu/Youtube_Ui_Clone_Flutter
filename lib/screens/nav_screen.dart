import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:youtube_ui_clone/screens/video_screen.dart';
import '../data.dart';
import 'home_screen.dart';

final selectedVideoProvider = StateProvider<Video?>((ref) => null);
final miniPlayerControllerProvider =
    StateProvider.autoDispose<MiniplayerController>(
        (ref) => MiniplayerController());

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  static const double _playerMinHeight = 60.0;

  int _selectedIndex = 0;

  final _screens = [
    HomeScreen(),
    const Scaffold(
      body: Center(
        child: Text("Keşfet"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("Ekle"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("Abonelikler"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("Kitaplık"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedFontSize: 10.0,
          unselectedFontSize: 10.0,
          onTap: (i) => setState(() => _selectedIndex = i),
          showUnselectedLabels: true,
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: Colors.white),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Ana Sayfa",
                activeIcon: Icon(Icons.home_filled)),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: "Keşfet",
                activeIcon: Icon(Icons.explore)),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                label: "Ekle",
                activeIcon: Icon(Icons.add_circle)),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined),
                label: "Abonelikler",
                activeIcon: Icon(Icons.subscriptions)),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined),
                label: "Kitaplık",
                activeIcon: Icon(Icons.video_library)),
          ],
        ),
        body: Consumer(
          builder: (context, watch, _) {
            final selectedVideo = watch(selectedVideoProvider).state;
            final miniPlayerController =
                watch(miniPlayerControllerProvider).state;
            return Stack(
              children: [
                ..._screens
                    .asMap()
                    .map((i, screen) => MapEntry(
                          i,
                          Offstage(
                              offstage: _selectedIndex != i, child: screen),
                        ))
                    .values
                    .toList()
                      ..add(Offstage(
                        offstage: selectedVideo == null,
                        child: Miniplayer(
                          controller: miniPlayerController,
                          minHeight: _playerMinHeight,
                          maxHeight: MediaQuery.of(context).size.height,
                          builder: (height, percentage) {
                            if (selectedVideo == null)
                              return const SizedBox.shrink();

                            if (height <= _playerMinHeight + 50.0)
                              return Container(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.network(
                                          selectedVideo.thumbnailUrl,
                                          height: _playerMinHeight - 4,
                                          width: 120,
                                          fit: BoxFit.cover,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Flexible(
                                                    child: Text(
                                                  selectedVideo.title,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.white),
                                                )),
                                                Flexible(
                                                    child: Text(
                                                  selectedVideo.author.username,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w500),
                                                ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              Icons.play_arrow,
                                              color: Colors.white,
                                            ),
                                            onPressed: null),
                                        IconButton(
                                            icon: Icon(
                                              Icons.close,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {
                                              context
                                                  .read(selectedVideoProvider)
                                                  .state = null;
                                            }),
                                      ],
                                    ),
                                    const LinearProgressIndicator(
                                      value: 0.4,
                                      valueColor:
                                          AlwaysStoppedAnimation(Colors.red),
                                    )
                                  ],
                                ),
                              );
                            return VideoScreen();
                          },
                        ),
                      )),
              ],
            );
          },
        ),
      ),
    );
  }
}
