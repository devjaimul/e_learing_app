import 'package:e_learing_app/views/course_details.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}
List<Map> categories = [
  {
    "icons": "assets/images/pic2.webp",
    'name': 'Accounting',
    'course': 22,
  },
  {
    "icons": "assets/images/pic3.png",
    'name': 'Photography',
    'course': 18,
  },
  {
    "icons": "assets/images/pic4.png",
    'name': 'Product Design',
    'course': 12,
  },
  {
    "icons": "assets/images/pic5.png",
    'name': 'Marketing',
    'course': 16,
  },
  {
    "icons": "assets/images/pic7.jpg",
    'name': 'Social Networking',
    'course': 19,
  },
  {
    "icons": "assets/images/pic8.png",
    'name': 'Trading',
    'course': 14,
  },
];
class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: categories.length,
      primary: false,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: .9,
      ),
      itemBuilder: (context, index) {
        final data = categories[index];
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CourseDetails(courseName:"${data['name']}" , courseNumber: data['course']),));
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 0.3,
                  )
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(  alignment: AlignmentDirectional.center,
                  child: Image(
                    image: AssetImage(data["icons"]),
                    width: 100,
                    height: 100,
                  ),

                ),
                Text(
                  data['name'],
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${data['course']} Courses",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.6)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
