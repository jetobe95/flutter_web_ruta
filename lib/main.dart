import 'package:flutter/material.dart';
import 'package:flutter_web_ruta/src/people.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter web ruta'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return WideLayout();
      }
      return NarrowLayout();
    });
  }
}

class PersonList extends StatelessWidget {
  final void Function(Person) onPersonTap;
  final bool Function(Person) getIsSelected;
  const PersonList({required this.onPersonTap, required this.getIsSelected});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kPeople.length,
      itemBuilder: (context, index) {
        final person = kPeople[index];
        return ListTile(
          selected: getIsSelected(person),
          onTap: () => onPersonTap(person),
          leading: SizedBox(
              width: 50,
              child: Image.network(
                person.picture,
              )),
          title: Text(
            person.name,
          ),
          subtitle: Text(
            person.phone,
          ),
        );
      },
    );
  }
}

class PersonDetail extends StatelessWidget {
  final Person person;
  const PersonDetail(this.person);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(person.name),
          Text(person.phone),
        ],
      ),
    );
  }
}

class WideLayout extends StatefulWidget {
  @override
  _WideLayoutState createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  Person? _person;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: PersonList(
            getIsSelected: (person) => person.name == _person?.name,
            onPersonTap: (person) => setState(() => _person = person),
          )),
          Expanded(
              flex: 2,
              child: _person == null ? Placeholder() : PersonDetail(_person!))
        ],
      ),
    );
  }
}

class NarrowLayout extends StatelessWidget {
  void onPersonTap(BuildContext context, Person person) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(),
          body: PersonDetail(person),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersonList(
          getIsSelected: (p) => false,
          onPersonTap: (person) => onPersonTap(context, person)),
    );
  }
}
