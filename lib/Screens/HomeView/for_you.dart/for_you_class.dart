class Fav1 {
  static List<String> title = [
    'Jan 03,2023' + '-' + 'Jan 05,2023',
    'Jan 03,2023' + '-' + 'Jan 05,2023',
    'Jan 03,2023' + '-' + 'Jan 05,2023',
    'heffefeello',
  ];

  static List<String> image = [
    'https://cdn.pixabay.com/photo/2016/11/23/15/48/audience-1853662_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/11/23/17/56/beach-1854076_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/03/04/19/36/beach-1236581_960_720.jpg',
    'https://cdn.pixabay.com/photo/2022/09/01/09/08/road-7425079_960_720.jpg',
  ];
  static List<String> title2 = [
    'Joker',
    'Addis Ababa',
    'Transport',
    'Event',
  ];

  Item getById(int id) => Item(
        id,
        // title[id % title.length],
        image[id % image.length],
        // title[id % title.length],
      );

  Item getByPosition(int position) {
    return getById(position);
  }
}

class Item {
  final int id;

  const Item(this.id, String image);

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
