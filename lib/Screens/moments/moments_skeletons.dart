import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MomentsSkeleton extends StatefulWidget {
  const MomentsSkeleton({Key? key}) : super(key: key);

  @override
  State<MomentsSkeleton> createState() => _MomentsSkeletonState();
}

class _MomentsSkeletonState extends State<MomentsSkeleton> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Skelton(),);
  }

  Widget Skelton(){

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 0, left: 10, right: 10),
          width: double.infinity,
          height: height * 0.45,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black.withOpacity(0.04),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width*0.25,
                        height: height * 0.02,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.04)),

                      )
                    ),
                    //Icon()
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: height * 0.29,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.04),
                          borderRadius: BorderRadius.circular(15)),
                      child: SizedBox(),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: width*0.25,
                            height: height * 0.02,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black.withOpacity(0.05)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              width: width*0.45,
                              height: height * 0.02,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black.withOpacity(0.05)),

                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(),
      ],
    );
  }

}
