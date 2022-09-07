import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swap_tech_test/bloc/profile_bloc/profile_bloc.dart';
import 'package:swap_tech_test/repository/models/profileModel/ProfileModel.dart';
import 'package:swap_tech_test/ui/loginPage.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  @override
  void initState() {
    BlocProvider.of<ProfileBloc>(context).add(GetProfile());
    // TODO: implement initState
    super.initState();
  }
  ProfileModel? profileModel;

  clearCredential() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Navigator.pushAndRemoveUntil(context,      MaterialPageRoute(builder: (context) =>  LoginPage()), (route) => false);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            clearCredential();
          }
              , icon:Icon( Icons.login_outlined))
        ],
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
  builder: (context, state) {

    if(state is ProfileLoading){
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    if(state is ProfileLoaded){
      profileModel = BlocProvider.of<ProfileBloc>(context).profileModel;
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius:MediaQuery.of(context).size.width * .20,
              backgroundImage: NetworkImage(profileModel!.data!.photo.toString()),
            ),

            Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('FirstName'),
                Text(profileModel!.data!.firstName.toString()),
              ],
            ),),
            Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('LastName'),
                  Text(profileModel!.data!.lastName.toString()),
                ],
              ),),
            Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('email'),
                  Text(profileModel!.data!.email.toString()),
                ],
              ),),
            Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('DOB'),
                  Text(profileModel!.data!.dob.toString()),
                ],
              ),),
            Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Phone Number'),
                  Text(profileModel!.data!.phone.toString()),
                ],
              ),)
          ],
        ),
      );
    }

    if(state is ProfileError){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(

          children: [
            Padding(

              padding: const EdgeInsets.all(20.0),
              child: Text("SomeThing Went Wrong while Fetching your Data . Please Login Again"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 25, 10, 5),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .07,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context,      MaterialPageRoute(builder: (context) =>  LoginPage()), (route) => false);
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
        )

      );
    }

    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

      );
  },
),
    );
  }
}
