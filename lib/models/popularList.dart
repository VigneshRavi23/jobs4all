class Popular {
  String name, imageUrl;
  int id;
  double rating;

  Popular(this.name, this.imageUrl, this.rating, this.id);
}

List<Popular> popularList = [
  Popular(
      "Handyman",
      "https://www.mrhandyman.com/sub/18964/images/handyman-service-keller.jpg",
      4.5,
      1),
  Popular(
      "Mechanic",
      "https://www.autotrainingcentre.com/wp-content/uploads/2015/06/automotive-service-advisor.png",
      4.2,
      2),
  Popular(
      "Towing",
      "https://www.pinoybisnes.com/wp-content/uploads/2022/01/Types-Of-Services-That-a-Professional-Towing-Service-Provide.jpg",
      3.0,
      3),
  Popular(
      "Lawn",
      "https://edenapp.com/wp-content/uploads/2020/10/Lawn-Care-1-.jpg",
      2.5,
      4),
  Popular(
      "Babysitting",
      "https://www.hospitality-school.com/wp-content/uploads/2018/08/hotel-babysitting-housekeeping-1280x720.jpg",
      5.0,
      5),
];
