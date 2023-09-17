import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import 'package:nutri_mind_application/shared/widgets/default_items.dart';

import '../../../../shared/Constants/colors.dart';

class DoctorReservationReceiptsScreen extends StatelessWidget {
  const DoctorReservationReceiptsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'DoctorProfile',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Payment List",style: AppTextStyle().textInAppBar.copyWith(fontSize: 21.sp),)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top:25.sp,bottom: 25.sp,left: 25.sp),
          child: Column(
            children: [
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Container(
            height: 60.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: MyColors.lightGrey
            ),
            child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.sp),
                    child: Text("\$5",style: AppTextStyle().textInAppBar.copyWith(fontSize: 15.sp),),
                  ),
                  VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                  Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Container(
                        padding: EdgeInsets.all(6.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: MyColors.yellow
                        ),
                        child: Text("Pending",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                  ),
                  VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                  Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Row(
                      children: [
                        Image.asset('assets/images/cash.png'),
                        SizedBox(width: 5.w,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ahmed",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp)),
                            SizedBox(height: 3.h,),
                            Text("01211059718",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp))
                          ],
                        )
                      ],
                    ),
                  ),
                  VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                  Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: InkWell(
                      onTap: (){Navigator.pushNamed(context, 'DoctorReceiptScreen');},
                      child: Container(
                          padding: EdgeInsets.all(6.sp),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.r),
                              color: MyColors.grey
                          ),
                          child: Text("Receipt Image",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                    ),
                  ),
                  VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                  Padding(
                      padding: EdgeInsets.all(15.sp),
                      child:Row(
                        children:[
                    Container(
                      padding:EdgeInsets.all(5.sp),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.r),
                          color:Colors.green.shade200,
                        ),
                      child:const Icon(Icons.check)
                    ),
                    SizedBox(width: 4.w),
                          Container(
                              padding:EdgeInsets.all(5.sp),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color:Colors.red.shade200,
                              ),
                              child:const Icon(Icons.close)
                          ),


            ],
                  ))
                ],
          ),
          ),
             ),
              SizedBox(height: 10.h,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: MyColors.lightGrey
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Text("\$5",style: AppTextStyle().textInAppBar.copyWith(fontSize: 15.sp),),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: MyColors.yellow
                            ),
                            child: Text("Pending",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Row(
                          children: [
                            Image.asset('assets/images/cash.png'),
                            SizedBox(width: 5.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ahmed",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp)),
                                SizedBox(height: 3.h,),
                                Text("01211059718",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp))
                              ],
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: MyColors.grey
                            ),
                            child: Text("Receipt Image",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                          padding: EdgeInsets.all(15.sp),
                          child:Row(
                            children:[
                              Container(
                                  padding:EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color:Colors.green.shade200,
                                  ),
                                  child:const Icon(Icons.check)
                              ),
                              SizedBox(width: 4.w),
                              Container(
                                  padding:EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color:Colors.red.shade200,
                                  ),
                                  child:const Icon(Icons.close)
                              ),


                            ],
                          ))

                    ],

                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: MyColors.lightGrey
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Text("\$5",style: AppTextStyle().textInAppBar.copyWith(fontSize: 15.sp),),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: MyColors.yellow
                            ),
                            child: Text("Pending",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Row(
                          children: [
                            Image.asset('assets/images/cash.png'),
                            SizedBox(width: 5.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ahmed",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp)),
                                SizedBox(height: 3.h,),
                                Text("01211059718",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp))
                              ],
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: MyColors.grey
                            ),
                            child: Text("Receipt Image",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                          padding: EdgeInsets.all(15.sp),
                          child:Row(
                            children:[
                              Container(
                                  padding:EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color:Colors.green.shade200,
                                  ),
                                  child:const Icon(Icons.check)
                              ),
                              SizedBox(width: 4.w),
                              Container(
                                  padding:EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color:Colors.red.shade200,
                                  ),
                                  child:const Icon(Icons.close)
                              ),


                            ],
                          ))

                    ],

                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: MyColors.lightGrey
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Text("\$5",style: AppTextStyle().textInAppBar.copyWith(fontSize: 15.sp),),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: MyColors.yellow
                            ),
                            child: Text("Pending",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Row(
                          children: [
                            Image.asset('assets/images/cash.png'),
                            SizedBox(width: 5.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ahmed",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp)),
                                SizedBox(height: 3.h,),
                                Text("01211059718",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp))
                              ],
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: MyColors.grey
                            ),
                            child: Text("Receipt Image",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                          padding: EdgeInsets.all(15.sp),
                          child:Row(
                            children:[
                              Container(
                                  padding:EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color:Colors.green.shade200,
                                  ),
                                  child:const Icon(Icons.check)
                              ),
                              SizedBox(width: 4.w),
                              Container(
                                  padding:EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color:Colors.red.shade200,
                                  ),
                                  child:const Icon(Icons.close)
                              ),


                            ],
                          ))

                    ],

                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: MyColors.lightGrey
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Text("\$5",style: AppTextStyle().textInAppBar.copyWith(fontSize: 15.sp),),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: MyColors.yellow
                            ),
                            child: Text("Pending",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Row(
                          children: [
                            Image.asset('assets/images/cash.png'),
                            SizedBox(width: 5.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ahmed",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp)),
                                SizedBox(height: 3.h,),
                                Text("01211059718",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp))
                              ],
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: MyColors.grey
                            ),
                            child: Text("Receipt Image",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                          padding: EdgeInsets.all(15.sp),
                          child:Row(
                            children:[
                              Container(
                                  padding:EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color:Colors.green.shade200,
                                  ),
                                  child:const Icon(Icons.check)
                              ),
                              SizedBox(width: 4.w),
                              Container(
                                  padding:EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color:Colors.red.shade200,
                                  ),
                                  child:const Icon(Icons.close)
                              ),


                            ],
                          ))

                    ],

                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: MyColors.lightGrey
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Text("\$5",style: AppTextStyle().textInAppBar.copyWith(fontSize: 15.sp),),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: MyColors.yellow
                            ),
                            child: Text("Pending",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Row(
                          children: [
                            Image.asset('assets/images/cash.png'),
                            SizedBox(width: 5.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ahmed",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp)),
                                SizedBox(height: 3.h,),
                                Text("01211059718",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp))
                              ],
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: MyColors.grey
                            ),
                            child: Text("Receipt Image",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                          padding: EdgeInsets.all(15.sp),
                          child:Row(
                            children:[
                              Container(
                                  padding:EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color:Colors.green.shade200,
                                  ),
                                  child:const Icon(Icons.check)
                              ),
                              SizedBox(width: 4.w),
                              Container(
                                  padding:EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color:Colors.red.shade200,
                                  ),
                                  child:const Icon(Icons.close)
                              ),


                            ],
                          ))

                    ],

                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: MyColors.lightGrey
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Text("\$5",style: AppTextStyle().textInAppBar.copyWith(fontSize: 15.sp),),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: MyColors.yellow
                            ),
                            child: Text("Pending",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Row(
                          children: [
                            Image.asset('assets/images/cash.png'),
                            SizedBox(width: 5.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ahmed",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp)),
                                SizedBox(height: 3.h,),
                                Text("01211059718",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp))
                              ],
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Container(
                            padding: EdgeInsets.all(6.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: MyColors.grey
                            ),
                            child: Text("Receipt Image",style: AppTextStyle().greyText.copyWith(fontSize: 12.sp,color: MyColors.black),)),
                      ),
                      VerticalDivider(thickness: 1.sp,color: MyColors.grey),
                      Padding(
                          padding: EdgeInsets.all(15.sp),
                          child:Row(
                            children:[
                              Container(
                                  padding:EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color:Colors.green.shade200,
                                  ),
                                  child:const Icon(Icons.check)
                              ),
                              SizedBox(width: 4.w),
                              Container(
                                  padding:EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    color:Colors.red.shade200,
                                  ),
                                  child:const Icon(Icons.close)
                              ),


                            ],
                          ))

                    ],

                  ),
                ),
              ),
            ],
        ),
      ),
      ),
    );
  }
}
