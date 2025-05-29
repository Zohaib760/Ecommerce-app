import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/product_detail_popup.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> sampleimages = [
      "assets/image1.jpg",
      "assets/image2.jpg",
      "assets/image3.jpg",
      "assets/image4.jpg",
      "assets/image5.jpg",
      "assets/image6.jpg",
    ];

    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 470,
              width: MediaQuery.of(context).size.width,
              child: FanCarouselImageSlider.sliderType1(
                sliderHeight: 450,
                imagesLink: sampleimages,
                isAssets: true,
                autoPlay: true,
                showIndicator: true,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Warm Zipper",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  Text(
                    "Hooded Jacket",
                    style: TextStyle(fontSize: 18),
                  ),
                ]),
                Text("\$300",
                    style: TextStyle(
                        color: Color(0xffdb3032),
                        fontSize: 32,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                itemSize: 30,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            ),
            const SizedBox(height: 10,),
             const Align(
              alignment: Alignment.centerLeft,
               child: Text(
                      "Cool windy weather is on its way.Send him out\nthe door in a jacket he want to wear. Warm\nZooper Hooded Jacket",
                      style: TextStyle(fontSize: 17),
                    ),
             ),
             const SizedBox(
              height: 30,
              ),
             Row(
               children: [
                const SizedBox(width: 13,),
                 Container(
                  height: 60,width: 60,
                  
                 decoration: BoxDecoration(
                  color: const Color(0x1f989897),
                  borderRadius: BorderRadius.circular(10)
                 ),
                 child: const Icon(Icons.shopping_cart, color: Colors.red,),
                 
                 ),
                  const SizedBox(width: 15,),
                  ProductDetailPopup(),

               ],
             ),
            
        
             
             
          ],
        ),
      )),
    ));
  }
}
