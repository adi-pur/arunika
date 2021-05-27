import 'package:flutter/material.dart';

class Hotel {
  String name;
  String location;
  String region;
  var price;
  List typeRoom;
  String description;
  String imageAsset;
  List<String> imageUrl;

  Hotel(
      {@required this.name,
      @required this.location,
      @required this.region,
      @required this.price,
      @required this.typeRoom,
      @required this.description,
      @required this.imageAsset,
      @required this.imageUrl});
}

var hotelList = [
  Hotel(
      name: 'Capella Ubud',
      location: 'Bali',
      region: 'Indonesia',
      price: {'King': 32419476, 'The Lodge': 110459810},
      typeRoom: ['King', 'The Lodge'],
      description:
          '“Marvelous” is how one reader succinctly described the experience at this year’s top hotel. Another said the property has the “best personalized service. Staff is super attentive, and the Bill Bensley design is unique.” The star designer’s efforts are surrounded by small villages, shrines, and acres of green rice paddies in Ubud’s Keliki Valley — another strong point, voters said. A suspension bridge leads guests here to their tented suites, and the interiors have the aura of an old-world explorer’s hideaway — but in the most luxurious way, with teak flooring, vintage steamer trunks, and antique furnishings. Here, guests feel truly immersed in the jungle, with dense forest on all sides and the River Wos rushing below. “It’s a magical experience on the isle of gods,” as one guest said.',
      imageAsset: 'images/capella-ubud.jpg',
      imageUrl: [
        'https://cf.bstatic.com/images/hotel/max1024x768/222/222316088.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/222/222316087.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/222/222316067.jpg?hp=1'
      ]),
  Hotel(
      name: 'Hotel Amparo',
      location: 'San Miguel de Allende',
      region: 'Mexico',
      price: {'Deluxe': 7450604, 'Suite Presidential': 11853234},
      typeRoom: ['Deluxe', 'Suite Presidential'],
      description:
          'In the heart of San Miguel de Allende, Hotel Amparo combines Spanish-colonial heirlooms and antiques with edgy contemporary art and textiles. Its location in the Zona Centro Histórico means it’s just a short walk to local sights like the Jardín Principal, the Plaza de la Soledad, and the Mercado de Artesanias.',
      imageAsset: 'images/hotel-amparo.jpg',
      imageUrl: [
        'https://cf.bstatic.com/images/hotel/max1024x768/184/184023176.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/285/285861523.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/274/274848798.jpg?hp=1'
      ]),
  Hotel(
      name: 'Fogo Island Inn',
      location: 'Newfoundland',
      region: 'Canada',
      price: {
        'Labrador Room – 1st Floor': 24694,
        'Labrador Room – 2nd Floor': 27074,
        'Labrador Room – 3rd Floor': 31834,
        'Newfoundland Room': 36595
      },
      typeRoom: [
        'Labrador Room – 1st Floor',
        'Labrador Room – 2nd Floor',
        'Labrador Room – 3rd Floor',
        'Newfoundland Room'
      ],
      description:
          'Set on the largest offshore island in Newfoundland and Labrador, the 29-room Fogo Island Inn was designed by Newfoundland-born architect Todd Saunders, who festooned the property with objects from the area’s fishing communities and craftspeople, handcrafted quilts, and wood-burning stoves. The views of the rocky coast — through floor-to-ceiling windows — are as dramatically beautiful as you’d imagine.',
      imageAsset: 'images/fogo-island-inn.jpg',
      imageUrl: [
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/5a/0f/cc/fogo-island-inn.jpg?w=1200&h=-1&s=1',
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/70/40/31/get-your-feet-up.jpg?w=1200&h=-1&s=1',
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/00/a7/36/fogo-island-inn.jpg?w=1200&h=-1&s=1'
      ]),
  Hotel(
      name: 'The Ritz-Carlton',
      location: 'Bali',
      region: 'Indonesia',
      price: {
        'Pavillion Villa': 3800000,
        'Sky Villa': 11300000,
        'Vila Ocean': 95000000
      },
      typeRoom: ['Pavillion Villa', 'Sky Villa', 'Vila Ocean'],
      description:
          'A beachfront resort that combines modern tropical style and Balinese architectural elements, the Ritz-Carlton is a sprawling, family-friendly resort known for its excellent service. With six restaurants, a spa, numerous swimming pools, and a kids’ club, readers said they often didn’t leave the decadent property.',
      imageAsset: 'images/the-ritz-carlton.jpg',
      imageUrl: [
        'https://q-xx.bstatic.com/xdata/images/hotel/840x460/101123615.jpg?k=61da7c33782df5ad8c47884b4b57fe38e18c2a9dfb5a64f30709b19de49a61f5&o=',
        'https://pix6.agoda.net/hotelImages/5401034/271698893/c06b4d20b00bacd5af2e80aa5d93fa23.jpg?s=1024x768',
        'https://pix6.agoda.net/hotelImages/5401034/271703527/10db0e4ecfc585dea2761398f4c87cdc.jpg?s=1024x768'
      ]),
  Hotel(
      name: 'Waldorf Astoria Maldives Ithaafushi',
      location: 'Ithaafushi Island',
      region: 'Maladewa',
      price: {'Two Queen': 58095868, 'King Grand': 92938458},
      typeRoom: ['Two Queen', 'King Grand'],
      description:
          'Guests to the Waldorf Astoria Maldives Ithaafushi feel pampered before they even get there, arriving by yacht from the international airport. Once on property, the 121 villas offer everything you want in a remote island vacation, including your own private pool from which to take in that crystal-clear sea.',
      imageAsset: 'images/waldorf-astoria.jpg',
      imageUrl: [
        'https://cf.bstatic.com/images/hotel/max1024x768/227/227051689.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/208/208290543.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/227/227052245.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/208/208288877.jpg?hp=1'
      ]),
  Hotel(
      name: 'Secret Bay',
      location: 'Portsmouth',
      region: 'Dominica',
      price: {
        'Ylang Ylang I': 17208773,
        'Zabuco Honeymoon II': 17208773,
        'Ti-Fèy I': 17208773
      },
      typeRoom: ['Ylang Ylang I', 'Zabuco Honeymoon II', 'Ti-Fèy I'],
      description:
          'Shrouded in rain forest, each accommodation at this all-villa resort has a private plunge pool. Because of the lush, dense vegetation, it’s easy to feel like you’re the only person for miles around.',
      imageAsset: 'images/secret-bay.jpg',
      imageUrl: [
        'https://cf.bstatic.com/images/hotel/max1024x768/250/250214087.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/153/153486860.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/371/37175110.jpg?hp=1'
      ]),
  Hotel(
      name: 'Canaves Oia Epitome',
      location: 'Santorini',
      region: 'Greece',
      price: {'Honeymoon Suite': 19903762},
      typeRoom: ['Honeymoon Suite'],
      description:
          'Opened in 2018, Canaves Oia Epitome is perched above the fishing village of Ammoudi. Its design is inspired by traditional Cycladic architecture, with a striking color palette of white, gray, and beige that contrasts dramatically with the sparkling blue sea below.',
      imageAsset: 'images/canaves-oia-epitome.jpg',
      imageUrl: [
        'https://cf.bstatic.com/images/hotel/max1024x768/249/249720083.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/151/151950953.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/151/151950962.jpg?hp=1'
      ]),
  Hotel(
      name: 'Finca Cortesin Hotel Golf & Spa',
      location: 'Málaga',
      region: 'Spain',
      price: {
        'Junior Suite': 16342957,
        'Executive Suite': 22449694,
        'Family Suite': 43552056
      },
      typeRoom: ['Junior Suite', 'Executive Suite', 'Family Suite'],
      description:
          'An Andalusian-inspired hotel in Málaga, Finca Cortesin is built around two main courtyards with 67 rooms surrounded by acres of manicured gardens. Four swimming pools, tennis and paddle tennis courts, a spa, and a beach club on the Mediterranean complete the idyllic Spanish picture.',
      imageAsset: 'images/finca-cortesin.jpg',
      imageUrl: [
        'https://cf.bstatic.com/images/hotel/max1024x768/128/12808432.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/930/9303345.jpg?hp=1',
        'https://cf.bstatic.com/images/hotel/max1024x768/128/12808476.jpg?hp=1'
      ])
];
