import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = "Sayuni";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          }, 
          icon: const Icon(Icons.menu)),
        title: Text(
          widget.title,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 25,
          )
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                child: Text("Sayuni", style: TextStyle(color: Colors.white, fontSize: 20),)),
            ),
            ListTile(
              title: const Text("Accueil"),
              onTap: () {
                
              },
            ),
            ListTile(
              title: const Text("Eglise sayuni"),
              onTap: () {
                
              },
            ),
            ListTile(
              title: const Text("Ecodim Sayuni"),
              onTap: () {
                
              },
            ),
            ListTile(
              title: const Text("La diaconie de l'églie"),
              onTap: () {
                
              },
            ),
            ListTile(
              title: const Text("Paramettre"),
              onTap: () {
                
              },
            ),
            ListTile(
              title: const Text("Se connecter"),
              onTap: () {
                
              },
            ),
          ],
        ),
      ),

      body: const Stack(
        children: [
            Text("my home page")
        ],
      )
    );
  }
}
