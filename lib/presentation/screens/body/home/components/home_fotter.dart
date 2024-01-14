import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/responsive.dart';
import '../../../../../core/utils/screen_size.dart';

class HomeFotter extends StatelessWidget {
  const HomeFotter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width:ScreenUtil.getScreenWidth(context),
        height: ScreenUtil.getScreenHeight(context)*0.3,
        child:Padding(
          padding: const EdgeInsets.all(50),
          child: Responsive.isLargeMobile(context) ? SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width:150,
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "Quick Links".tr,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "terms & condition ".tr,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "privacy policy".tr,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width:150,
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "Quick info".tr,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "Email-support".tr,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width:150,
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "Contact us".tr,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: (){},
                              child: SvgPicture.asset("icons/face.svg")
                          ),
                          InkWell(
                              onTap: (){},
                              child: SvgPicture.asset("icons/linked.svg")
                          ),
                          InkWell(
                              onTap: (){},
                              child: SvgPicture.asset("icons/yout.svg")
                          ),
                          InkWell(
                              onTap: (){},
                              child: SvgPicture.asset("icons/x.svg")
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: (){},
                              child: SvgPicture.asset("icons/whats.svg")
                          ),
                          InkWell(
                              onTap: (){},
                              child: SvgPicture.asset("icons/tik.svg")
                          ),
                          InkWell(
                              onTap: (){},
                              child: SvgPicture.asset("icons/snap.svg")
                          ),
                          InkWell(
                              onTap: (){},
                              child: SvgPicture.asset("icons/inst.svg")
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ) :
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width:150,
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Text(
                        "Quick Links".tr,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: (){},
                      child: Text(
                        "terms & condition ".tr,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: (){},
                      child: Text(
                        "privacy policy".tr,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width:ScreenUtil.getScreenWidth(context)*0.03,
                height: ScreenUtil.getScreenWidth(context)*0.3,
              ),
              Container(
                width:150,
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Text(
                        "Quick info".tr,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: (){},
                      child: Text(
                        "Email-support".tr,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width:ScreenUtil.getScreenWidth(context)*0.03,
                height: ScreenUtil.getScreenWidth(context)*0.3,
              ),
              Container(
                width:150,
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Text(
                        "Contact us".tr,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: (){},
                            child: SvgPicture.asset("icons/face.svg")
                        ),
                        InkWell(
                            onTap: (){},
                            child: SvgPicture.asset("icons/linked.svg")
                        ),
                        InkWell(
                            onTap: (){},
                            child: SvgPicture.asset("icons/yout.svg")
                        ),
                        InkWell(
                            onTap: (){},
                            child: SvgPicture.asset("icons/x.svg")
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: (){},
                            child: SvgPicture.asset("icons/whats.svg")
                        ),
                        InkWell(
                            onTap: (){},
                            child: SvgPicture.asset("icons/tik.svg")
                        ),
                        InkWell(
                            onTap: (){},
                            child: SvgPicture.asset("icons/snap.svg")
                        ),
                        InkWell(
                            onTap: (){},
                            child: SvgPicture.asset("icons/inst.svg")
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
