import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quickbroker/core/utils/controller.dart';
import 'package:quickbroker/presentation/screens/user/login/login_view.dart';
import 'package:quickbroker/presentation/screens/user/logout/logout_view.dart';

import '../../../../../core/utils/constants.dart';
import '../../../others/commission_markter/commission_markter_step1.dart';


class LangMenu extends StatelessWidget {
  const LangMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: InkWell(
        onTap: () {
          // Handle onTap action
        },
        borderRadius: BorderRadius.circular(defaultPadding + 10),
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(
            color: Colors.white, // Border color
            width: 2.0, // Border width
          ),
            borderRadius: BorderRadius.circular(defaultPadding),
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.white,
              ],
            ),
          ),
          child: InputDecorator(
            decoration: InputDecoration(
              border: OutlineInputBorder( // Add border styling
                borderRadius: BorderRadius.circular(defaultPadding),
                borderSide: BorderSide(
                  color: Colors.white, // Border color
                  width: 2.0, // Border width
                ),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Adjust content padding
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true, // Ensure the dropdown button takes full width
                hint: Text(
                  "ENGLISH", // Set your hint text
                  style: TextStyle(color: Colors.grey[400]), // Hint text style
                ),
                dropdownColor: Colors.transparent, // Set dropdown background color
                items: <String>[
                  'log in ', 'log out', 'forget password','create account',"loading",'thanks','commission markter',
                  'CreateCodeCompanyView',
                  'JoinUsCompanyView',
                ] // Add your dropdown items
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  switch(newValue){
                    case'log in ' :{
                      controller.jumpToPage(7)  ;
                    }
                    break;
                    case'log out' :{
                      controller.jumpToPage(8)  ;
                    }
                    break;
                    case'forget password' :{
                      controller.jumpToPage(9)  ;
                    }
                    break;
                    case'create account' :{
                      controller.jumpToPage(10)  ;
                    }
                    break;
                    case'loading' :{
                      controller.jumpToPage(11)  ;
                    }
                    break;
                    case'thanks' :{
                      controller.jumpToPage(12)  ;
                    }
                    break;
                    case'commission markter':{
                      Get.to(CommissionMarkterStep1());
                    }
                    break;
                    case'CreateCodeCompanyView':{
                      controller.jumpToPage(14)  ;
                    }
                    break;
                    case'JoinUsCompanyView':{
                      controller.jumpToPage(15)  ;
                    }
                    break;


                  }
                },
                style: TextStyle(color: Colors.white), // Set dropdown text color
              ),
            ),
          ),
        ),
      ),
    );
  }
}
