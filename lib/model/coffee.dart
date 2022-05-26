class Coffee {
  final int id;
  final String name;
  final String description;
  final String type;
  final String slug;
  final List<String>? steps;
  final List<String>? needs;

  Coffee({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.slug,
    this.steps,
    this.needs,
  });
}

final List<Coffee> coffees = [
  Coffee(
    id: 1001,
    name: 'AFFOGATO',
    description:
        'Espresso poured on a vanilla ice cream. Served in a cappuccino cup.',
    type: 'type',
    slug: 'affogato',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1012,
    name: 'AMERICANO (or ESPRESSO AMERICANO)',
    description: "A tall, mild 'milk coffee' (about 150-300 ml)."
        " An espresso with steamed milk and only a little milk"
        " foam poured over it. Serve in a latte glass or a coffee cup."
        " Flavoured syrup can be added. ",
    type: 'type',
    slug: 'americano',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1013,
    name: 'CAFFÈ LATTE',
    description: "Espresso with added hot water (100–150 ml)."
        " Often served in a cappuccino cup."
        " (The espresso is added into the hot water rather than all the water "
        "being flowed through the coffee that would lead to over extraction.)",
    type: 'type',
    slug: 'caffe-latte',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1014,
    name: 'CAFFÈ MOCHA',
    description:
        'A caffè latte with chocolate and whipped cream, made by pouring about'
        ' 2 cl of chocolate sauce into the glass, followed by an espresso shot'
        ' and steamed milk. ',
    type: 'type',
    slug: 'caffe-mocha',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1015,
    name: 'CAFÈ AU LAIT',
    description:
        "French morning coffee. Made by mixing dark roasted filter coffee"
        " (often prepared with French Press) and warm milk. Served in a bowl"
        " or a large coffee cup.",
    type: 'type',
    slug: 'cafe-au-lait',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1016,
    name: 'CAPPUCCINO',
    description: "A coffee drink consisting of espresso and a milk foam mixture"
        " (drink size about 160–240 ml). Served in a cappuccino cup.",
    type: 'type',
    slug: 'cappuccino',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1017,
    name: 'COLD BREW COFFEE',
    description:
        'Cold Brew Coffee is a smooth, cold beverage prepared by brewing'
        ' freshly ground coffee in cold water. In the Cold Brew process,'
        ' time makes up for heat.',
    type: 'type',
    slug: 'cold-brew-coffee',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1018,
    name: 'DOUBLE ESPRESSO (DOPPIO)',
    description: 'Double portion of espresso in a cappuccino/espresso cup.',
    type: 'type',
    slug: 'double-espresso',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1019,
    name: 'ESPRESSO',
    description:
        'A short, strong drink (about 30 ml) served in an espresso cup.',
    type: 'type',
    slug: 'espresso',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1020,
    name: 'RISTRETTO (or ESPRESSO RISTRETTO)',
    description:
        'A very short shot of espresso (about 20 ml). Served in an espresso cup.',
    type: 'type',
    slug: 'ristretto',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1002,
    name: 'ESPRESSO CON PANNA',
    description:
        'A shot of espresso topped with whipped cream. Served in an espresso cup.',
    type: 'type',
    slug: 'espresso-con-panna',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1003,
    name: 'ESPRESSO MACCHIATO',
    description: 'Espresso with a little milk foam (drink size about 50 ml).'
        ' Served in an espresso cup.',
    type: 'type',
    slug: 'espresso-macchiato',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1004,
    name: 'FLAT WHITE',
    description:
        'A coffee drink with a double espresso and lightly frosted milk'
        ' (About 150–240 ml). Served in a glass.',
    type: 'type',
    slug: 'flat-white',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1005,
    name: 'FRAPPÉ',
    description: 'Rich iced coffee made of espresso, milk and ice.'
        ' Flavoured syrup can be added (about 300 ml).'
        ' Mixed in a blender and served for example in a latte glass.',
    type: 'type',
    slug: 'frappe',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1006,
    name: 'LUNGO (or ESPRESSO LUNGO)',
    description:
        'An espresso pulled long (50–60 ml). Served in an espresso/cappuccino cup.',
    type: 'type',
    slug: 'lungo',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1007,
    name: 'FREAKSHAKE',
    description:
        'Basically anything that is blended/mixed/stirred and served with'
        ' various topping that are very "instagrammable". Coffee Freakshakes'
        ' are often made with cold brew coffee.',
    type: 'type',
    slug: 'freakshake',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1008,
    name: 'ICED LATTE',
    description:
        'Ice, cold milk and an espresso in a latte glass (about 300 ml),'
        ' often mixed with some sugar or flavoured syrup. Served in a latte glass.',
    type: 'type',
    slug: 'iced-latte',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1009,
    name: 'ICED MOCHA',
    description: 'Cold Caffè mocha. Prepared like iced latte, but garnished and'
        ' flavoured like caffè mocha (about 300 ml). Served in a latte glass.',
    type: 'type',
    slug: 'iced-mocha',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1010,
    name: 'IRISH COFFEE',
    description: 'Classic coffee coctail where Irish whiskey is mixed with'
        ' filter coffee and topped with thin layer of gently whipped cream.',
    type: 'type',
    slug: 'irish-coffee',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
  Coffee(
    id: 1011,
    name: 'LATTE MACCHIATO',
    description:
        'Like a traditional caffè latte, but with a thicker layer of foam.'
        ' Often made by pouring an espresso last into the milk'
        ' (drink size about 300 ml). Served in a latte glass.',
    type: 'type',
    slug: 'latte-macchiato',
    needs: [
      'Espresson machine',
      'Coffee beans',
      'Grinder',
      'Scale',
      'Cup',
      'Tamper',
      'Milk pitcher',
      'Cloth for portafilter and steamed',
    ],
    steps: [
      'Prepare the espresso',
      'Pour milk to the pitcher. Make sure your stea wand cloth is moist',
      'Purge the steam wand and pull it to far up and straight position.'
          ' Place the pitcher so that the nozzle is aligned to the steam wand.'
          ' Make sure the steam wand nozzle is in the middle of the pitcher and '
          'just below the milk surface. Tilt the pitcher a bit to optimize the'
          ' whilrpool later on.',
      'Swith on the steam wand. Start with the nozzle just below the surface'
          ' but after a second or two rise the pitcher a bit so that the nozzle'
          ' gets deeper into milk. Make sure the nozzle does not touch the bottom '
          'of the pitcher! ',
      'Find a perfect position where the whilrpool of milk is created.'
          ' Keep warming the milk until it reaches +55-62 c. ',
      'Swirl the milk in the pitcher until it is smooth, silky and shiny.  ',
      'Pour the caffe latte and enjoy! ',
    ],
  ),
];
