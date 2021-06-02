class Person {
  final String name;
  final String phone;
  final String picture;

  Person({
    required this.name,
    required this.phone,
    required this.picture,
  });

  static Person fromMap(Map<String,dynamic> map ){
    return Person(
      name: map['name'],
      phone: map['phone'],
      picture: map['picture']
    );
  }

  static List<Person> fromListMap(List list){
    final  List<Person> people =  [];
    for(var person in list){
      people.add(fromMap(person));
    }
    return people;
  }
  


}



const _people = [
  {
    "_id": "60b71689c1de587ea189b193",
    "index": 0,
    "guid": "c38a122b-4502-459a-b11a-bd1f9989e379",
    "isActive": false,
    "balance": "\$3,413.02",
    "picture": "http://placehold.it/32x32",
    "age": 28,
    "eyeColor": "green",
    "name": "Abby Brady",
    "gender": "female",
    "company": "PORTICA",
    "email": "abbybrady@portica.com",
    "phone": "+1 (978) 540-2941",
    "address": "110 Ridgewood Avenue, Dubois, Oklahoma, 4933",
    "about":
        "Sunt excepteur in velit deserunt. Cupidatat dolore culpa sunt sunt tempor aliquip laboris qui sint incididunt irure laborum. Adipisicing exercitation qui anim ipsum consectetur deserunt ipsum cupidatat sit ea cillum. Ipsum ut reprehenderit commodo excepteur consectetur.\r\n",
    "registered": "2018-12-28T10:15:59 +05:00",
    "latitude": -23.453368,
    "longitude": -132.056961,
    "tags": [
      "occaecat",
      "nulla",
      "ea",
      "fugiat",
      "eiusmod",
      "nostrud",
      "dolore"
    ],
    "friends": [
      {"id": 0, "name": "Humphrey Navarro"},
      {"id": 1, "name": "Gillespie Floyd"},
      {"id": 2, "name": "Dee Frazier"}
    ],
    "greeting": "Hello, Abby Brady! You have 1 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "60b71689d57a321586f7b66b",
    "index": 1,
    "guid": "b4246d4f-9f1b-446b-8db1-1f1ee6735d7b",
    "isActive": false,
    "balance": "\$2,807.83",
    "picture": "http://placehold.it/32x32",
    "age": 38,
    "eyeColor": "blue",
    "name": "Alison Love",
    "gender": "female",
    "company": "RECRISYS",
    "email": "alisonlove@recrisys.com",
    "phone": "+1 (973) 479-3560",
    "address": "962 Strickland Avenue, Garfield, Virgin Islands, 1770",
    "about":
        "Ut ipsum enim aliqua excepteur id est commodo anim aute occaecat cillum minim dolor aute. Aute occaecat incididunt qui consectetur do ad velit non est sit amet mollit tempor consectetur. Aliquip exercitation adipisicing laborum proident veniam cupidatat adipisicing laboris est elit.\r\n",
    "registered": "2015-06-21T06:27:09 +05:00",
    "latitude": -6.483842,
    "longitude": -169.503455,
    "tags": ["in", "id", "mollit", "ipsum", "quis", "qui", "dolore"],
    "friends": [
      {"id": 0, "name": "Karla Kirk"},
      {"id": 1, "name": "Reilly Swanson"},
      {"id": 2, "name": "Michelle Dickerson"}
    ],
    "greeting": "Hello, Alison Love! You have 2 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "60b71689efd0d6312a5094d1",
    "index": 2,
    "guid": "85457349-9747-4118-94fa-66e069fc27e3",
    "isActive": true,
    "balance": "\$3,512.82",
    "picture": "http://placehold.it/32x32",
    "age": 22,
    "eyeColor": "brown",
    "name": "Shawna English",
    "gender": "female",
    "company": "SOLAREN",
    "email": "shawnaenglish@solaren.com",
    "phone": "+1 (986) 538-3305",
    "address": "457 Elmwood Avenue, Jeff, Alaska, 3042",
    "about":
        "Reprehenderit sit irure labore duis cillum. Laborum laborum commodo do qui eu in incididunt nostrud. Amet exercitation occaecat sunt tempor reprehenderit fugiat culpa aliqua. Lorem in non ea sint nisi occaecat. Id incididunt officia irure sint ea minim. Nisi non eiusmod magna irure culpa dolore dolor Lorem ut do deserunt dolor.\r\n",
    "registered": "2019-11-05T04:22:22 +05:00",
    "latitude": -9.319872,
    "longitude": 49.363293,
    "tags": [
      "deserunt",
      "mollit",
      "sunt",
      "exercitation",
      "irure",
      "commodo",
      "esse"
    ],
    "friends": [
      {"id": 0, "name": "Rena Rush"},
      {"id": 1, "name": "Marylou Miranda"},
      {"id": 2, "name": "Graham Hartman"}
    ],
    "greeting": "Hello, Shawna English! You have 6 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "60b716890809fa9870b8d195",
    "index": 3,
    "guid": "6e0c9cd2-f648-429e-8720-0753165a2266",
    "isActive": false,
    "balance": "\$1,207.68",
    "picture": "http://placehold.it/32x32",
    "age": 33,
    "eyeColor": "blue",
    "name": "Lynn Stephenson",
    "gender": "male",
    "company": "SOPRANO",
    "email": "lynnstephenson@soprano.com",
    "phone": "+1 (883) 532-3393",
    "address": "914 Marconi Place, Rodanthe, Palau, 732",
    "about":
        "Voluptate velit deserunt non exercitation commodo id. Sint sunt consequat et sint duis quis culpa aliqua est elit. Adipisicing amet in nisi enim dolor voluptate qui. Et amet voluptate exercitation est minim ut qui ullamco Lorem culpa id mollit. Officia veniam et occaecat exercitation dolore cillum cupidatat labore qui qui ad. Adipisicing voluptate dolore id aliqua aliquip consectetur duis esse exercitation aute nulla Lorem nostrud ea. Tempor culpa nostrud quis incididunt fugiat ullamco incididunt in eu commodo tempor pariatur.\r\n",
    "registered": "2016-01-26T12:00:48 +05:00",
    "latitude": 45.016635,
    "longitude": 5.871077,
    "tags": [
      "duis",
      "aliquip",
      "dolor",
      "aliquip",
      "eiusmod",
      "minim",
      "labore"
    ],
    "friends": [
      {"id": 0, "name": "Edna Reilly"},
      {"id": 1, "name": "Schmidt Compton"},
      {"id": 2, "name": "Suarez Spears"}
    ],
    "greeting": "Hello, Lynn Stephenson! You have 5 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "60b7168995ca18469cd8d6aa",
    "index": 4,
    "guid": "1d73b852-6c85-4344-8633-85206b9366e0",
    "isActive": false,
    "balance": "\$3,474.85",
    "picture": "http://placehold.it/32x32",
    "age": 25,
    "eyeColor": "brown",
    "name": "Anderson Craig",
    "gender": "male",
    "company": "URBANSHEE",
    "email": "andersoncraig@urbanshee.com",
    "phone": "+1 (863) 490-2854",
    "address": "843 Moultrie Street, Farmers, Montana, 4378",
    "about":
        "Exercitation ut ipsum proident adipisicing magna laboris mollit id voluptate do aliquip. Irure Lorem anim aliquip consequat laborum Lorem eiusmod aliqua commodo reprehenderit ea veniam consequat laboris. Exercitation et proident voluptate sunt ex tempor deserunt velit aliquip ipsum amet officia.\r\n",
    "registered": "2019-03-29T12:56:19 +05:00",
    "latitude": 56.880762,
    "longitude": -153.455339,
    "tags": ["amet", "qui", "id", "ipsum", "fugiat", "velit", "esse"],
    "friends": [
      {"id": 0, "name": "Taylor Roberts"},
      {"id": 1, "name": "Rodriguez Frye"},
      {"id": 2, "name": "Flora Pratt"}
    ],
    "greeting": "Hello, Anderson Craig! You have 7 unread messages.",
    "favoriteFruit": "strawberry"
  }
];

final kPeople = Person.fromListMap(_people);
