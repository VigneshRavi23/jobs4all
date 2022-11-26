class Jobs {
  String title;
  String description;
  int bids;
  int views;
  int favorites;
  int hours;
  int price;
  String jobType;
  String imageUrl;

  Jobs(this.title, this.description, this.bids, this.views, this.favorites,
      this.hours, this.price, this.jobType, this.imageUrl);
}

List<Jobs> bidderJobList = [
  Jobs(
      "Water heater services",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      20,
      90,
      35,
      0,
      0,
      "Bidder",
      "https://www.nationalservicechennai.com/water-heater-service-chennai/images/water-heater-service.webp"),
  Jobs(
      "Toilet plumbing",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      25,
      40,
      15,
      0,
      0,
      "Bidder",
      "https://kiddcoplumbing.com/wp-content/uploads/2022/03/toilet-plumbing.jpg"),
  Jobs(
      "Sump pump services",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      10,
      20,
      32,
      0,
      0,
      "Bidder",
      "https://www.attaboyplumbing.com/wp-content/uploads/2018/06/sump-pump-replacement-indianapolis-300x227.jpg"),
  Jobs(
      "Sump pump services",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      10,
      20,
      32,
      0,
      0,
      "Bidder",
      "https://www.attaboyplumbing.com/wp-content/uploads/2018/06/sump-pump-replacement-indianapolis-300x227.jpg"),
  Jobs(
      "Piping/leak services",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      45,
      70,
      36,
      0,
      0,
      "Bidder",
      "https://www.silcoplumbing.com/wp-content/uploads/2020/05/AdobeStock_216282910-scaled.jpeg"),
];

List<Jobs> posterJobList = [
  Jobs(
      "Water heater services",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      10,
      0,
      0,
      3,
      110,
      "Poster",
      "https://www.nationalservicechennai.com/water-heater-service-chennai/images/water-heater-service.webp"),
  Jobs(
      "Toilet plumbing",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      10,
      0,
      0,
      3,
      230,
      "Poster",
      "https://kiddcoplumbing.com/wp-content/uploads/2022/03/toilet-plumbing.jpg"),
  Jobs(
      "Sump pump services",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      10,
      0,
      0,
      3,
      98,
      "Poster",
      "https://www.attaboyplumbing.com/wp-content/uploads/2018/06/sump-pump-replacement-indianapolis-300x227.jpg"),
  Jobs(
      "Piping/leak services",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      45,
      70,
      36,
      0,
      0,
      "Poster",
      "https://www.silcoplumbing.com/wp-content/uploads/2020/05/AdobeStock_216282910-scaled.jpeg"),
];
