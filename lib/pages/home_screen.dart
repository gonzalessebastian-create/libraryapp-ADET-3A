import 'package:flutter/material.dart';
import 'package:gonzales/pages/second_screen.dart';
import 'package:gonzales/pages/registration_page.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,

        leading: Builder(
          builder:(context){
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white,),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        


        title: const Text(
          "Manga Home Page",
          style: TextStyle(color: Colors.white),
          ),
      ),


      

      
      


        

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome to DENUVOSCANS",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,

            ),),


            const SizedBox(height: 30),
            Image.network(
              'https://imgs.search.brave.com/Wmc3VEfvtn5UvvU2npGJMy8-3qIFP91h_xj3yu9d7JQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9naWZk/Yi5jb20vaW1hZ2Vz/L2hpZ2gvbGlnaHQt/eWFnYW1pLWxheWlu/Zy1pbi1iZWQtZXdl/YWp2aXhzeTR1N3hu/cS5naWY.gif'),




            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) => const MySecondPage()
                 )
                 
                 );

              },
               child: Text("Click here to Read Manga")
               ),

               const SizedBox(height: 30,),

               ElevatedButton(onPressed: () {
                showDialog(
                  context: context, builder: (context) => const MyWidget(),
                     );
               }, child: const Text("Register")
               )
          ],
        )
      ),



      floatingActionButton: FloatingActionButton(
      onPressed: () {ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
        content: Text("Coming Soon"),
        duration: Duration(seconds: 2),
        ),
        );
      },
      child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      


      drawer: Drawer(
        child:ListView(
          children: [
            const DrawerHeader(
              child: Text("Menu"),
              ),
              ListTile(
                title: const Text("Mangalist"),
                onTap: () {
                   Navigator.pop(context); 
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MySecondPage()
                    ),
                  );
                },
              ),
          ],
        )
      ),
    );
    
  }
}







