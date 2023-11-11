class MusicModal {
  String authr;
  String musicName;
  String img;
  bool isSelect;
  MusicModal({
    required this.authr,
    required this.img,
    required this.musicName,
    required this.isSelect,
  });
}

List<MusicModal> music = [
  MusicModal(authr: 'Jaloliddin Ahmadaliyev', img: 'assets/1.jpg', musicName: 'Yurak', isSelect: false),
  MusicModal(authr: 'Doston Ergashev', img: 'assets/2.jpg', musicName: 'Soxtaginam', isSelect: false),
  MusicModal(authr: 'Jasur Umirov', img: 'assets/3.jpg', musicName: 'Guli', isSelect: false),
  MusicModal(authr: 'Jaloliddin Ahmadaliyev', img: 'assets/4.jpg', musicName: 'Xoqon O\'zing', isSelect: false),
  MusicModal(authr: 'Mirjalol Nematov', img: 'assets/5.jpg', musicName: 'Gitara', isSelect: false),
  MusicModal(authr: 'Gulinur', img: 'assets/1.jpg', musicName: 'Olislarda', isSelect: false),
  MusicModal(authr: 'Jaloliddin Ahmadaliyev', img: 'assets/2.jpg', musicName: 'Yetmasmidiyey', isSelect: false),
  MusicModal(authr: 'Jaloliddin Ahmadaliyev', img: 'assets/3.jpg', musicName: 'Nigoro', isSelect: false),
  MusicModal(authr: 'Ozodbek Nazarbekov', img: 'assets/4.jpg', musicName: 'Lola', isSelect: false),
  MusicModal(authr: 'Elyorbek Meliboyev', img: 'assets/5.jpg', musicName: 'Yomg\'ir', isSelect: false),
];

List<MusicModal> wishlistMusic = [];
