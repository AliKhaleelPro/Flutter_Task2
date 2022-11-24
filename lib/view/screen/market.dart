import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
        Text(
          'Market',
          style: GoogleFonts.urbanist(color: Colors.white, fontSize: 28),
        ),
        SizedBox(
          width: 115,
        ),
        Stack(
          children: [
            Image.asset(
              'asset/images/Group 11.png',
              fit: BoxFit.cover,
              height: 40,
            ),
            Positioned(
              right: 3,
              child: CircleAvatar(
                radius: 11,
                backgroundColor: Color(0xffFF002E),
                child: Text(
                  '5',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          width: 15,
        ),
      ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: name.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          // height: 26,
                          //width: 166,
                          decoration: BoxDecoration(
                              color: Color(0xff2F2F34),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: kcolor[i])),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 22),
                            child: Text(
                              name[i].toString(),
                              style: GoogleFonts.urbanist(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      mainAxisExtent: 260),
                  itemBuilder: (BuildContext context, int index) {
                    return buildImage(images[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildImage(String path) {
    return Container(
      height: 200,
      width: 156,
      decoration: BoxDecoration(
          color: Color(0xff2A3547),
          // image:DecorationImage(image: NetworkImage(image1,),fit: BoxFit.cover) ,
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(
                    path,
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Super Influencers',
                      style: GoogleFonts.urbanist(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '#1267',
                          style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'asset/images/ethereum.png',
                              height: 12,
                            ),
                            Text(
                              '6.64',
                              style: GoogleFonts.urbanist(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 25,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff2F2F3433),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'asset/images/Vector-2.png',
                        height: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '2',
                        style: GoogleFonts.urbanist(
                            color: Color(0xff161616),
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<Color> kcolor = [
  Color(0xff0AFF96),
  Color(0xff2F2F34),
  Color(0xff2F2F34),
  Color(0xff2F2F34),
  Color(0xff2F2F34),
];

List<String> name = ['All NFTs', 'Art', 'Collectibles', 'Music', 'Photo'];

List<String> images = [image1, image2, image3, image4, image5, image6];
final String image1 =
    'https://s3-alpha-sig.figma.com/img/0da8/f64c/e5ed7c16301e490f75e484be7eea3d08?Expires=1670198400&Signature=ZKzbybG9YfZKy6hCHfEXLxGNI5LyWNGD6oBSemr7oY1xU-N9T3roMdNmJVrAbTXGu7U7vR5jezbzNIyiJde6udIJJS~RgoyEPliqtimFVDCFCuCDnFPeLJuFV7KVbzthEDHw7XqGvPQZsu52P8~xz2Be33QhVWuqCDPYtMwH6992bOGzIj90Ey-ejeeoHp0mAZfQEeybcU43m9lMJ4EgHBpHcbsIVV8ZvoNY5TrOIRg4GBePDCxRzkutozYNBkFQRY22WbQFYiuvfRlOkG~DZTWHRuCvQvjsV1bLgXcjmA9Kb7XyK-fUAp5h9K3HfPaIHJdgAthM33b1ZwxVjcx~nw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
final String image2 =
    'https://s3-alpha-sig.figma.com/img/a2b1/a54e/af84c6b7b4623a75c5202091738af60d?Expires=1670198400&Signature=H6jfs7piNPnaO7DCRiCKwjfaCJBdo5DRy1XKBxhWRQpENfAy31YyYq4ZE-1kgqzPQaLOCEhO8hyETCWyriTHZsyem~mXP636AqsrvgZUgjsfsbKCE6Lr2mrL4CsBQC6ubqRd~sc-l~v2jvjwFuQkjIVzq~DxuzHMBtYbD~coqqmPDKeeqJ5FIKkLyipP1dbaxjy95nlgZUU8sJgZ0rKlzGKvxgDHj0iIgWeKMG9aPno1LlIVsY5pYQ7J~Q20P56ruAJWTeE-n~m5EPK6nHwJXM6HwEHmnzrYzMu2P8s~oDYG5b29zefNjdwklA5lMtc~4ScgkozIkUri-yU7cQZHug__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
final String image3 =
    'https://s3-alpha-sig.figma.com/img/a2b1/a54e/af84c6b7b4623a75c5202091738af60d?Expires=1670198400&Signature=H6jfs7piNPnaO7DCRiCKwjfaCJBdo5DRy1XKBxhWRQpENfAy31YyYq4ZE-1kgqzPQaLOCEhO8hyETCWyriTHZsyem~mXP636AqsrvgZUgjsfsbKCE6Lr2mrL4CsBQC6ubqRd~sc-l~v2jvjwFuQkjIVzq~DxuzHMBtYbD~coqqmPDKeeqJ5FIKkLyipP1dbaxjy95nlgZUU8sJgZ0rKlzGKvxgDHj0iIgWeKMG9aPno1LlIVsY5pYQ7J~Q20P56ruAJWTeE-n~m5EPK6nHwJXM6HwEHmnzrYzMu2P8s~oDYG5b29zefNjdwklA5lMtc~4ScgkozIkUri-yU7cQZHug__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
final String image4 =
    'https://s3-alpha-sig.figma.com/img/a698/8e91/55cd83b9c863fd267085a848d4e6ff0c?Expires=1670198400&Signature=cQs8cz2xEbTp2GF5REkI52jJQs2Dx9I5PtZBAcPMwDZEJsta0thWGS9Huzphh~gVAkeJ8m4eV5nVM4MH5X69iWLzu38vAhU3R8TBescIw2i6NdZV9Mome0r0kAy1ZESDV4uEDZa0O4kONs8fI2-vkrroXhBj0UbVUssr5CkV16ijcYXFxnF2254zj1-B0-TNcptG6U4BairzA--HjpR4mhLh1uCYpcJbIREWRo7j1lkVfE5pRJY1awxh8GE7XHcoQyQaJaj1CB2zW0vo2gd3EeMCE~DXvjl5ckKT2wuHvccwVm-4zj5DR2cFLu9rS2tILfLD91y5PXJfYF2qZj2tVg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
final String image5 =
    'https://s3-alpha-sig.figma.com/img/a598/0439/bfb9a685d444fe7d2494849e65ed7459?Expires=1670198400&Signature=RGuqtCbkynXCIE9vODLcpAg7Pl71CjsZdtfAPSJWiqhcFT2CeJMg3ZwO2j0wG-xB0Y~DV0~tbY5wdj5efnLhpECGxyLU9qEPYTSNVr~yKtkdWLwu9YuJpUPI4ujYwKBxMAROd3t1WfeVBM6GlpRTKyI-qaOXuvxZ5wnAL-5cyuvrht~ZV6S383Toz5-hhdP0ctI4BeB9k5ym-5dcfJOXdXMD7LFMee2k-utzyKAx8CHQQJnFKHQRgFhQiBAkb3oJOlxLUqOm1jBVDs4arnjVj~u5uhzcgCoJud9PqZWBXa-2H3CLOA1n1xL7UGOwxrh-ef4ltnxmDeYYtxHqyGMldg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
final String image6 =
    'https://s3-alpha-sig.figma.com/img/3993/09c1/e9cdff75d39a153befb7542a65a4e82b?Expires=1670198400&Signature=Oevz8uIgj1i06wVXlW32TkWzLmXFtJF-u00ZWPnhmsMqpyuJjfPsvzbJeHvJ3gRqunPdK3-XLGzoYvwpBB0~2m1CZ14k9z4MMEIJUfGiJgxeiNwaWXz6r~lRY0uuPJL5bmKdLkn-jelwIF62MCmd8O5qFZ97O5-bL2MVOmOEZNS1YL8mpGiQdJGssCZddljLnk5W59tyS-ukUPgnFlpV9b3-kh51GVVXk0usolQR1j9T5lk6N03YzdI2joTiAbWuB3~He1j9~g4JFqq60m9ZLYtj6DuQScFalo7uE83Y6dWDF3TyhKVbm05WCsdcwtb8wroJdivYHTR6DVpvl~arww__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
