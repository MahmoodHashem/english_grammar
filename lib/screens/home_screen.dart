import 'package:flutter/material.dart';
import 'tutorial_screen.dart';


class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

   var images = ['practice','Tutorial','test','tips',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 5,
        title: Text(' گرامر انگلیسی',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      endDrawer: Drawer(
        // Add your side menu content here
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black54,
                image: DecorationImage(
                    image: AssetImage(
                      'asset/images/wallpaper.jpg',
                    ),
                    fit: BoxFit.fill),
              ),
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text(
                  'تنظیمات',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                onTap: () {
                  // Handle option 1 selection
                },
              ),
            Divider(
              height: 1,
            ),
      ListTile(
                leading: Icon(Icons.translate),
                title: Text(
                  'دیکشنری',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                onTap: () {
                  // Handle option 1 selection
                },
              ),
            Divider(
              height: 1,
            ),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: const Text(
                  'درباره',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                onTap: () {
                  // Handle option 2 selection
                },
              ),
            Divider(
              height: 1,
            ),
            // Add more ListTile widgets for additional menu options
          ],
        ),
      ),
      body:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blueAccent,
                Colors.white,
              ],
            )),
        child: Column(
          children: [
            Card(
              elevation: 5,
              margin: EdgeInsets.only(left: 5,right: 5,bottom: 7),
              child: Container(
                height: 200,
                width: double.infinity,
                child: Image.asset('asset/images/wall.jpg',
                fit: BoxFit.fill,),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (b,i){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (c) => Tutorial()));
                      },
                      child: Card(
                        margin: EdgeInsets.all(5),
                        elevation: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          width: 80,
                          height: 80,
                          child: Image.asset('asset/images/${images[i]}.jpg',
                          fit: BoxFit.fill,),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}


