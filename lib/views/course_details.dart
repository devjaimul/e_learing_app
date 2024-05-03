import 'package:e_learing_app/utlis/colors.dart';
import 'package:e_learing_app/widgets/custom_buttons.dart';


import 'package:flutter/material.dart';



import '../widgets/custom_appbar.dart';

class CourseDetails extends StatefulWidget {
  final String courseName;
  final int courseHour;

  const CourseDetails(
      {super.key, required this.courseName, required this.courseHour});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {

  List<Map> info=[
    {
      "title":"Introduction",
      "time":"18 min 58 sec"
    },
    {
      "title":"The history !!",
      "time":"32 min 45 sec"
    },
    {
      "title":"What is It?",
      "time":"20 min 24 sec"
    },
    {
      "title":"What are the scope in it??",
      "time":"10 min 20 sec"
    },
    {
      "title":"How one should learn it?",
      "time":"30 min 32 sec"
    },
    {
      "title":"Basics of It",
      "time":"18 min 58 sec"
    },
    {
      "title":"Why one should learn it??",
      "time":"25 min 19 sec"
    },
    {
      "title":"Why it's called the key to success??",
      "time":"18 min 58 sec"
    },
    {
      "title":"Master Class",
      "time":"1 Hour 58 min"
    },
  ];
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: customAppBar(context: context, courseName: widget.courseName),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: size.height * .25,
              width: size.width * .90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 0.5,
                        blurRadius: 10)
                  ]),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/pic6.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Master Course of ${widget.courseName}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                RichText(
                    text: TextSpan(
                        text: "Created by ",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.5)),
                        children:const  [
                       TextSpan(
                          text: " @Jia_Error",
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ])),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star_border,
                            color: Colors.black.withOpacity(0.5)),
                        Text(
                          "4.8",
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.watch_later_outlined,
                            color: Colors.black.withOpacity(0.5)),
                        Text(
                          " 72 Hours",
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5)),
                        ),
                      ],
                    ),
                    const Text(
                      '\$21.00',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Scaffold(
                  appBar: AppBar(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                    automaticallyImplyLeading: false,
                    backgroundColor: AppColors.primaryColor.withOpacity(0.1),
                    title: TabBar(
                      labelColor: _selectedIndex == 0 ? Colors.white : Colors.black,
                      unselectedLabelColor:
                      _selectedIndex == 1 ? Colors.white : Colors.black,
                      indicatorColor: Colors.transparent,
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      unselectedLabelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      onTap: _onTap,
                      tabs: [
                        GestureDetector(
                          onTap: () {
                            _onTap(0);
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: _selectedIndex == 0
                                    ? AppColors.primaryColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10)),
                            child: Tab(text: 'Playlists (${widget.courseHour})'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _onTap(1);
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: _selectedIndex == 1
                                    ? AppColors.primaryColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Tab(text: 'Description'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  body: TabBarView(children: [
                    ListView.builder(

                      itemCount: info.length,
                      itemBuilder: (context, index) {
                        final data =info[index];
                      return ListTile(
                        leading: index/2==0? const CircleAvatar(radius: 25,
                          backgroundColor: AppColors.primaryColor,
                          child: Icon(Icons.play_arrow,color: Colors.white,),
                        ): CircleAvatar(radius: 25,
                          backgroundColor: AppColors.primaryColor.withOpacity(0.1),
                          child: const Icon(Icons.play_arrow,color: AppColors.primaryColor,),
                        ),
                        title: Text(data['title']),
                        titleTextStyle: const TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),
                        subtitle: Text(data['time']),
                        subtitleTextStyle:  TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.6),),
                        trailing:index/2==0 ? const Icon(Icons.check_circle,color: Colors.green,size: 25,):
                        const Icon(Icons.lock,color: AppColors.primaryColor,size: 25,),

                      );
                    },),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Wrap(children: [
                        Text('''One idea to improve the effectiveness of the writing is to add specific examples of the practical skills and industry knowledge that the course will cover. This will give readers a better understanding of what they can expect to learn and how it will benefit them in their career.\n Another idea is to highlight the success stories of past students who have taken the course and gone on to achieve their career goals. This will serve as a powerful testament to the effectiveness of the course and inspire readers to enroll.\n Finally, the writing could benefit from using more active language to create a sense of urgency and excitement. For example, instead of saying "don't miss out on this life-changing opportunity," the writing could say "seize this life-changing opportunity and unlock your full potential today!''',
                          style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.7)),),
                      ],),
                    ),
                  ],),
                )

              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(

                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(

                    children: [
                      Expanded(
                        child: Container(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 14),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(Icons.add_shopping_cart_outlined,color: Colors.white,),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(flex:3,child: CustomButton(buttonData: "Enroll Now", buttonWidth: size.width * 0.7, onTap: (){})),
                    ],
                  ),

                )],
            )






          ],
        ),
      ),



    );
  }
}
