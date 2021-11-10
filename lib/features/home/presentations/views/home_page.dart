import 'package:flutter/material.dart';
import 'package:proyect_template/core/constants/stack_list.dart';
import 'package:proyect_template/core/resources/assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const HomePage(),
      settings: const RouteSettings(name: 'home'),
    );
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final StackDev _stack = StackDev();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(child: _buildContent()),
      ),
    );
  }

  Widget _buildContent() {
    return Center(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          const Text(
            'Welcome',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          const SizedBox(height: 20),
          _buildPresentations(),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          _buildProyectInfo(),
        ],
      ),
    );
  }

  Widget _buildPresentations() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Card(
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Text(
                  '✌️ Hi, Im Richar, I have more than 3 years of experience as a front-end programmer, passionate about application development and enthusiastic about the world of computing.',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ),
              Image.asset(Assets.myLogo, height: 100),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProyectInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          const Text(
            'It uses a layered architecture based on Clean Architecture. These layers are: Presentation, Domain and Data. In the `core` folder you will find these 3 layers, as well as other functionalities such as the application theme, utilities, resources, constants, among others. Everything in `core` is shared by the entire app. The various features of the application are found in `features`. Each of these modules contains its own `presentation`,` domain` and `data` layers. The functionalities within each `feature` are ** NOT ** shared with other modules. In the `di` folder you will find the configuration for dependency injection. This is not modified manually, but example [injectable] is used, code generator for example [get_it]',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          const SizedBox(height: 20),
          const Text(
            'like my profile if you liked this little project',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 20),
          _buildStackDev(),
        ],
      ),
    );
  }

  Widget _buildStackDev() {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            _stack.stackDev.length,
            (index) => _stack.stackDev[index],
          ),
        ),
      ),
    );
  }
}
