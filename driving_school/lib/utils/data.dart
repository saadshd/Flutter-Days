
class model{
  static final items = [
    Item(
      id: 1,
      name: 'M. Saad Shahid',
      car: 'Toyota Corolla',
      time: '04:00PM - 07:00PM',
      image: 'https://unsplash.com/photos/v2aKnjMbP_k', ),

    Item(
      id: 2,
      name: 'M. Talha',
      car: 'Toyota Vitz',
      time: '06:00PM - 09:00PM',
      image: 'https://unsplash.com/photos/v2aKnjMbP_k', ),

    Item(
      id: 2,
      name: 'Abdul Haseeb',
      car: 'Suzuki Mehran',
      time: '09:00AM - 09:00PM',
      image: 'https://unsplash.com/photos/v2aKnjMbP_k', )
  ];
}

class Item{
   final int id;
   final String name;
   final String car;
   final String image;
   final String time;

  Item({
    required this.id,
    required this.name,
    required this.car,
    required this.time,
    required this.image});
}



