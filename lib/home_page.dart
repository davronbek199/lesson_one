import 'package:flutter/material.dart';
import 'package:lesson_one/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.grey,
        title: new Padding(
          padding: EdgeInsets.only(left: 160),
          child: new Text("ELECTRIC CARS"),
        ),
      ),
      body: ListView(
        children: [
          tesla(context),
          audi(context),
          bmw(context),
          mercedes(context),
          kia(context),
        ],
      ),
    );
  }

  Widget tesla(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(image: 'assets/images/tesla_model_x.png',
              content: "Option                                        P100D \n"
                       "Horsepower                              714 \n"
                       "acceleration to hungreds        3.1s \n"
                       "maximum speed                      250 k/h \n"
                       "rund on one charge                 542 km",
              appBar: 'TESLA', ),
          ),
        );
      },
      child: Card(
        elevation: 10,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 260,
              height: 180,
              padding: EdgeInsets.all(20),
              child: Image.asset('assets/images/tesla_logo.png',),
            ),
            Container(
              padding: EdgeInsets.only(left: 94),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("TESLA",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Model X",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget audi(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(image:'assets/images/audi_e_tron.png', content:  "Option                                        E-tron \n"
                "Horsepower                              408 \n"
                "acceleration to hungreds        5.7s \n"
                "maximum speed                      250 k/h \n"
                "rund on one charge                 436 km", appBar: 'AUDI', ),
          ),
        );
      },
      child: Card(
        elevation: 10,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 260,
              height: 180,
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'assets/images/audi_logo.png',fit: BoxFit.fill ,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 100),
              child: Column(
mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("AUDI",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("E-tron",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bmw(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage( image: 'assets/images/bmw_ix.png',content:  "Option                                        iX \n"
                "Horsepower                              523 \n"
                "acceleration to hungreds        4.6s \n"
                "maximum speed                      250 k/h \n"
                "rund on one charge                 630 km", appBar: 'BMW',),
          ),
        );
      },
      child: Card(
        elevation: 10,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 180,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 20),
              child: Image.asset('assets/images/bmw_logo.png',fit: BoxFit.contain ,),
            ),
            Container(
              padding: EdgeInsets.only(left: 140),

              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("BMW",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("iX",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mercedes(context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage( image: 'assets/images/mercedes_eqs.png',content:  "Option                                        EQC \n"
            "Horsepower                              408 \n"
            "acceleration to hungreds        5.1s \n"
            "maximum speed                      250 k/h \n"
            "rund on one charge                 445 km", appBar: 'Mercedes-Benz',),),);
      },
      child: Card(
        elevation: 10,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: 240,
              height: 180,
              child: Image.asset(
                'assets/images/mercedes_logo.png', fit: BoxFit.contain ,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("MERCEDES",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("BENZ",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("EQC",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget kia(context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage( image: 'assets/images/kia.png',content:  "Option                                        Niro EV \n"
            "Horsepower                              204 \n"
            "acceleration to hungreds        7.8s \n"
            "maximum speed                      250 k/h \n"
            "rund on one charge                 385 km", appBar: 'KIA',),),);
      },
      child: Card(
        elevation: 10,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 180,
              padding: EdgeInsets.only(left: 40),
              child: Image.asset('assets/images/kia_logo.png', fit: BoxFit.cover ,),
            ),
            Container(
             padding: EdgeInsets.only(left: 140),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("KIA",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Niro EV",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
