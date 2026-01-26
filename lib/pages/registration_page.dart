import 'package:flutter/material.dart';
import 'package:gonzales/widgets/mytextfield.dart';



class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final TextEditingController _firstnameController =TextEditingController();
  final TextEditingController _lastnameController =TextEditingController();
  final TextEditingController _usernameController =TextEditingController();
  final TextEditingController _passwordController =TextEditingController();

  void _submitData(){
    
  }


  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(
                'https://imgs.search.brave.com/mCuimrnx6QHf53T6vncZcc7ywq4upFq2lqPDatzSHVU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS50ZW5vci5jb20v/aHZqeWtzTEZhQjRB/QUFBTS9saWdodC1s/aWdodC15YWdhbWku/Z2lm.gif'

              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                label: 'Enter First Name',
                icon: Icons.person,
                controller: _firstnameController,
              ),

                        const SizedBox(
              height: 20,
            ),
            MyTextField(
                label: 'Enter Last Name',
                icon: Icons.person,
                controller: _lastnameController,
              ),
                        const SizedBox(
              height: 20,
            ),
            MyTextField(
                label: 'Enter User Name',
                icon: Icons.person,
                controller: _usernameController,
              ),
                        const SizedBox(
              height: 20,
            ),
            MyTextField(
                label: 'Enter password',
                icon: Icons.person,
                controller: _passwordController,
              ),
                        const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
          

          
          

        ),),
    );
  }
}
