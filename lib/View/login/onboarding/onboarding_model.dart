class IntroModel {
  String? image;
  String? title;
  String? discription;
  IntroModel({this.image, this.title, this.discription});
}

List<IntroModel> contents = [
  IntroModel(
    title: '        Welcome to \n ROHIT EDUCATION',
    image: 'lib/assets/images/intro1.png',
    discription: 'Learn anytime, anywhere.',
  ),
  IntroModel(
    title: '        Welcome to \n ROHIT EDUCATION',
    image: 'lib/assets/images/intro2.png',
    discription: 'Practice Online.',
  ),
  IntroModel(
    title: '        Welcome to \n ROHIT EDUCATION',
    image: 'lib/assets/images/intro3.png',
    discription: 'Track Your Progress.',
  )
];
