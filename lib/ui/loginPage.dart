import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swap_tech_test/bloc/loginbloc/login_bloc.dart';
import 'package:swap_tech_test/repository/models/Loginmodel.dart';
import 'package:swap_tech_test/ui/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  Loginmodel? loginmodel;
  saveCredentials(token) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
    Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context) =>  DashBoardPage()));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BlocListener<LoginBloc, LoginState>(
  listener: (context, state) {
    if(state is LoginLoaded){
      loginmodel = BlocProvider.of<LoginBloc>(context).loginModel;
      saveCredentials(loginmodel!.data!.token.toString());
    } else if (state is LoginError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Something Went Wrong while Loging you in. Please Try again'),
        ),
      );
    }
    // TODO: implement listener
  },
  child: BlocBuilder<LoginBloc, LoginState>(
  builder: (context, state) {
    if(state is LoginLoading){
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            )
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                child: TextField(
                  autofocus: true,
                  controller: phone,
                  textInputAction: TextInputAction.done,


                  decoration: InputDecoration(

                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.fromLTRB(40, 20, 20, 20),
                    filled: true,
                    hoverColor: Colors.green,
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(15.0),
                        ),
                        borderSide: BorderSide(color: Colors.grey)),
                    hintText: "I D",
                    prefixIcon:IconButton(
                      onPressed: null,
                      icon: Icon(Icons.account_box_outlined,color: Colors.black,size: 30,),
                    ),
                    hintStyle:TextStyle(color: Colors.black38,fontSize: 20),
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                child: TextField(
                  obscureText: true,
                  // autofocus: true,
                  textInputAction: TextInputAction.next,
                  controller: password,

                  decoration: InputDecoration(
                    // fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                    filled: true,
                    hoverColor: Colors.green,
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(15.0),
                        ),
                        borderSide: BorderSide(color: Colors.grey)),
                    hintText: "Password",
                    prefixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.password_outlined,color: Colors.black,size: 30,),
                    ),
                    hintStyle:TextStyle(color: Colors.black38,fontSize: 20),
                  ),
                ),

              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10, 25, 10, 5),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .07,
                  child: ElevatedButton(
                    onPressed: (){
                      if(phone.value.text.isNotEmpty && password.value.text.isNotEmpty){
                        BlocProvider.of<LoginBloc>(context).add(Login(ID: phone.value.text.toString(), Password: password.value.text.toString()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Credentials should not be Empty'),
                          ),
                        );
                      }



                    },
                    child: Text("LOGIN",style: TextStyle(fontSize: 22),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  },
),
),
    );
  }
}
