import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Form(
        child:Padding(
          padding: const EdgeInsets.only(left:20.0, right: 20.0),

          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

           TextFormField(
            autovalidateMode:  AutovalidateMode.always,
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              labelText: "Kullanıcı Adı",
              border: OutlineInputBorder()
            ),
            validator: (value){
               if (value!.isEmpty){
                 return "Kullanici adini giriniz!";
               }
               else{
                 return null;

               }
            }
          ),

          SizedBox(height: 10.0),
          TextFormField(
              autovalidateMode:  AutovalidateMode.always,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  labelText: "Sifre",
                  border: OutlineInputBorder()
              ),
              validator: (value){
                if (value!.isEmpty){
                  return "Sifrenizi giriniz!";
                }
                else{
                  return null;

                }
              }
          ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  child: Text("Uye Ol"),
                  onPressed: () {},
                ),

                MaterialButton(
                  child: Text("Sifremi Unuttum"),
                  onPressed: () {},
                )
              ]
            )

        ]
      )),
      ),
    );
  }

}
