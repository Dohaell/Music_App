class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });
  static List<Song> songs = [
    Song(
      title: 'Let her go',
      description: 'Let her go',
      url: 'assets/music/lethergo.mp3',
      coverUrl: 'assets/image/passenger.jpg',
    ),
    Song(
      title: 'I am yours',
      description: 'I am yours',
      url: 'assets/music/imyours.mp3',
      coverUrl: 'assets/image/jasonmraz.jpg',
    ),
    Song(
      title: 'Shallow',
      description: 'Shallow',
      url: 'assets/music/shallow.mp3',
      coverUrl: 'assets/image/ladygaga.jpg',
    ),
    Song(
      title: 'City of stars',
      description: 'City of stars',
      url: 'assets/music/cityofstars.mp3',
      coverUrl: 'assets/image/leesuhyun.jpeg',
    ),
  ];
}
