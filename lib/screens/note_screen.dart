import 'package:flutter/material.dart';


class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  String text = '''
  حروف تعریف نامعین ( a / an ) :
1.	حروف تعریف نامعین شامل  a , an بوده و با اسم های استفاده می شود که برای مخاطب شناخته شده نباشد و یا شناخته بودن و نبودنش برای مخاطب مهم نباشد. 
		مثال:    
I have a friend  ---  من یک دوست دارم 
در مثال فوق برای مخاطب من نا معلوم است که کدام دوست را می گویم. 
همچنان در مثال های ذیل اسمهای که استفاده کردیم برای مخاطب مشخص نیست. 
I watched a movie last night. ----- من دیشب یک فلم تماشا کردم
I met a woman yesterday --------  من دیروز یک زنی را ملاقات کردم. 
I read a book everyday ------ من هر روز کتاب می خوانم 
2.	حروف تعریف نامعین قبل از اسم های قابل شمارش مفرد استفاده می شود و با اسم های قابل شمارش جمع و غیر قابل شمارش استفاده شده نمی تواند.
مثال:  
I have a book. (درست)
I have a pens. (اشتباه)
That a sugar. (اشتباه)
  ''';

  double _height = 150;

  int _maxLines = 4;

  bool _customIcon = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back), color: Colors.blue.shade800),
          actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.menu), color: Colors.blue.shade800,)],
          title: Align(
              alignment: Alignment.centerRight,
              child: Text(" نوت های من ",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
          )
      ),
      body: ListView.builder(
        itemCount: 4,
          itemBuilder: (b,i){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    right: BorderSide(
                      color: Colors.orange,
                      width: 4,
                    ),
                    left: BorderSide(
                      color: Colors.orange,
                      width: 0.5,
                    ),
                    top: BorderSide(
                      color: Colors.orange,
                      width: 0.5,
                    ),
                    bottom: BorderSide(
                      color: Colors.orange,
                      width: 0.5,
                    ),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                height: _height,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text('حروف تعریف',
                                maxLines: 1,
                                style: TextStyle(
                                  color: Colors.blue.shade800,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(text,
                                maxLines: _maxLines,
                                overflow: TextOverflow.fade,
                                style: TextStyle(

                                ),
                                textDirection: TextDirection.rtl,),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: IconButton(
                              onPressed: (){
                                setState(() {
                                  if(_customIcon){
                                    _height += 200;
                                    _maxLines += 12;
                                    _customIcon = false;
                                  }else if(!_customIcon){
                                    _height = 150;
                                    _maxLines = 3;
                                    _customIcon = true;
                                  }
                                });
                              },
                              icon: Icon(
                                _customIcon? Icons.keyboard_arrow_down_outlined: Icons.keyboard_arrow_up_outlined,
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            children: [
                              IconButton(onPressed: (){},
                                  icon: Icon(Icons.delete_outline_outlined, color: Colors.blue.shade800,)),
                              IconButton(onPressed: (){},
                                  icon: Icon(Icons.edit_outlined,
                                      color: Colors.blue.shade800)),

                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            );
          }), 
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),

        backgroundColor: Colors.blue.shade800,

      ),
      
    );
  }
}


