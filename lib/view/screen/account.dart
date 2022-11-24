import 'package:dart_flutter_task2/view/screen/market.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Color(0xff0AFF96),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundImage: NetworkImage(img),
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        'Account_1',
                        style: GoogleFonts.urbanist(
                            color: Colors.white, fontSize: 16),
                      )
                    ],
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
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Current Wallet Balance',
                style: GoogleFonts.urbanist(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$ 5,323.00',
                    style:
                        GoogleFonts.urbanist(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Color(0xffA0A0A0),
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Container(
                height: 22,
                width: 166,
                decoration: BoxDecoration(
                    color: Color(0xff2F2F34),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'BTC : 0,00335',
                      style: GoogleFonts.urbanist(
                          color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Icon(
                      Icons.arrow_drop_up,
                      color: Color(0xff00FFA3),
                    ),
                    Text(
                      '+6.54%',
                      style: GoogleFonts.urbanist(
                        color: Color(0xff00FFA3),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildCircleAvatar(Color(0xff2A3547),
                      'asset/images/money-send 1.png', 'Send'),
                  buildCircleAvatar(
                      Color(0xff0061FF), 'asset/images/add 1.png', 'Buy'),
                  buildCircleAvatar(Color(0xff2A3547),
                      'asset/images/money-recive 1.png', 'Receive'),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                height: 47,
                width: 332,
                decoration: BoxDecoration(
                    color: Color(0xff2F2F34),
                    borderRadius: BorderRadius.circular(100)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 39,
                      width: 166,
                      decoration: BoxDecoration(
                          color: Color(0xff3B3F58),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                          child: Text(
                        'Tokens',
                        style: GoogleFonts.urbanist(
                            color: Color(0xffE9E9E9), fontSize: 16),
                      )),
                    ),
                    SizedBox(
                      height: 39,
                      width: 166,
                      child: Center(
                          child: Text(
                        'NFTs',
                        style: GoogleFonts.urbanist(
                            color: Color(0xff7C7D82), fontSize: 16),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              btc(
                  path1: 'asset/images/Frame 6.png',
                  path2: 'asset/images/Line 1.png',
                  name1: 'BTC',
                  name2: 'Bitcoin',
                  num1: '\$36,590.00',
                  num2: '+6.21%',
                  colNumber: Color(0xff0AFF96)),
              btc(
                  path1: 'asset/images/Frame 6-2.png',
                  path2: 'asset/images/Line 1-2.png',
                  name1: 'ETC',
                  name2: 'Ethereum',
                  num1: '\$2,590.00',
                  num2: '+5.21%',
                  colNumber: Color(0xffFF002E)),
              btc(
                  path1: 'asset/images/Frame 6-3.png',
                  path2: 'asset/images/Line 1-3.png',
                  name1: 'SOL',
                  name2: 'Solona',
                  num1: '\$390.00',
                  num2: '+2.21%',
                  colNumber: Color(0xffFF002E)),
            ],
          ),
        ),
      ),
      // floatingActionButton: IconButton(
      //     onPressed: () {
      //       Navigator.push(
      //           context, MaterialPageRoute(builder: (context) => Market()));
      //     },
      //     icon: Icon(
      //       Icons.arrow_forward,
      //       size: 50,
      //       color: Colors.white,
      //     )),
    );
  }
}

Widget btc(
    {required String path1,
    path2,
    name1,
    name2,
    num1,
    num2,
    Color? colNumber}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(path1),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name1,
                    style:
                        GoogleFonts.urbanist(color: Colors.white, fontSize: 19),
                  ),
                  Text(
                    name2,
                    style: GoogleFonts.urbanist(
                        color: Color(0xffA0A0A0), fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          Image.asset(
            path2,
            height: 27,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$36,590.00',
                style: GoogleFonts.urbanist(color: Colors.white, fontSize: 19),
              ),
              Text(
                '+6.21%',
                style: GoogleFonts.urbanist(color: colNumber, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 17,
      ),
      Divider(
        height: 1,
        color: Colors.white.withOpacity(.4),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}

Widget buildCircleAvatar(Color color, String path, String str) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 38,
          backgroundColor: color,
          child: Image.asset(path, height: 34),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          str,
          style: GoogleFonts.urbanist(color: Color(0xffE9E9E9), fontSize: 16),
        )
      ],
    ),
  );
}

final String img =
    'https://s3-alpha-sig.figma.com/img/37f4/cb26/e5dd63607e12057cafdee7f081287cb7?Expires=1670198400&Signature=hzRdM1Vx-MBt5BAPmXLSOApNssN33auav8lj3dJ~FbZ5h2EYJ0FMhYTNFCwVBaJ~MhLX~j1R68Qg4UGQiD6qK33FNXLBcfeuJJoGhOMQNrlg5lymvL9KLRtnDdx-LEnm~4DEKwsL3LfUn3znH5LbmFJsvbzIJhiqLdmNGAX6tV619JOjxRVHxHy-xGyZB7NxWCbAP63NVWeN3nDnedZ8dkIsvFRZDNPIU0DObIKLOidAElQ68xp8IDYHKnquBlcy10sOeQH2Pk-vLNj86p~61~hvLzFLwAbcs0JovXfqprJGYXwJegSWepHZbYRDxoxHUqf9WT7YJm20a~r-yqtv9A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
