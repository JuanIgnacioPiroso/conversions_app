import 'package:flutter/material.dart';

class ConversionsScreen extends StatefulWidget {
   const ConversionsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Conversions();
}

class _Conversions extends State<ConversionsScreen> {
  bool active = false;
  String title = "Unidad actual";
  bool activeTwo = false;
  String titleTwo = "Unidad deseada";
  final myController = TextEditingController();

  double kilometrosAHectometros() {

    var numeroString = double.parse(myController.text);
    

    double resultado = numeroString * 10;

    return resultado;
  }

  double kilometrosADecametros() {

    var numeroString = double.parse(myController.text);
    

    double resultado = numeroString * 100;


    return resultado;
  }

  double kilometrosAMetros() {

    var numeroString = int.parse(myController.text);
    

    double resultado = numeroString * 1000;

    return resultado;
  }

  double kilometrosADecimetros() {

    var numeroString = int.parse(myController.text);
    

    double resultado = numeroString * 10000;

    return resultado;
  }

  double kilometrosACentimetros() {

    var numeroString = int.parse(myController.text);
    

    double resultado = numeroString * 100000;

    return resultado;
  }

  double kilometrosAMilimetros() {
    var numeroString = int.parse(myController.text);
    

    double resultado = numeroString * 1000000;

    return resultado;
  }

  double hectometrosAKilometros() {
    return 0;
  }

  double hectometrosADecametros() {
    return 0;
  }

  double hectometrosAMetros() {
    return 0;
  }

  double hectometrosADecimetros() {
    return 0;
  }

  double hectometrosACentimetros() {
    return 0;
  }

  double hectometrosAMilimetros() {
    return 0;
  }

  double decametrosAKilometros() {
    return 0;
  }

  double decametrosAHectometros() {
    return 0;
  }

  double decametrosAMetros() {
    return 0;
  }

  double decametrosADecimetros() {
    return 0;
  }

  double decametrosACentimetros() {
    return 0;
  }

  double decametrosAMilimetros() {
    return 0;
  }

  double metrosAKilometros() {
    return 0;
  }

  double metrosAHectometros() {
    return 0;
  }

  double metrosADecametros() {
    return 0;
  }

  double metrosADecimetros() {
    return 0;
  }

  double metrosACentimetros() {
    return 0;
  }

  double metrosAMilimetros() {
    return 0;
  }

  double decimetrosAKilometros() {
    return 0;
  }

  double decimetrosAHectometros() {
    return 0;
  }

  double decimetrosADecametros() {
    return 0;
  }

  double decimetrosAMetros() {
    return 0;
  }

  double decimetrosACentimetros() {
    return 0;
  }

  double decimetrosAMilimetros() {
    return 0;
  }

  double centimetrosAKilometros() {
    return 0;
  }

  double centimetrosAHectometros() {
    return 0;
  }

  double centimetrosADecametros() {
    return 0;
  }

  double centimetrosAMetros() {
    return 0;
  }

  double centimetrosADecimetros() {
    return 0;
  }

  double centimetrosAMilimetrosFn() {
    return 0;
  }

  double milimetrosAKilometros() {
    return 0;
  }

  double milimetrosAHectometros() {
    return 0;
  }

  double milimetrosADecametros() {
    return 0;
  }

  double milimetrosAMetros() {
    return 0;
  }

  double milimetrosADecimetros() {
    return 0;
  }

  double milimetrosACentimetros() {
    return 0;
  }

  late List<bool> _isOpen;

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:  const Text('Conversiones'),
          elevation: 10,
          centerTitle: true,
          backgroundColor:  const Color.fromARGB(255, 182, 21, 197)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:  const EdgeInsets.all(16.0),
              child: TextField(
                obscureText: false,
                controller: myController,
                decoration:  const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingrese la medida',
                ),
              ),
            ),
            Padding(
              padding:  const EdgeInsets.all(25.0),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  active = !active;
                  if (title == "Unidad actual") {
                    title = "Seleccione la unidad actual";
                  } else {
                    title = "Unidad actual";
                  }

                  setState(() {});
                },
                children: <ExpansionPanel>[
                  ExpansionPanel(
                    headerBuilder: (context, isOpen) {
                      return  const Text(
                        'Seleccione una conversion',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      );
                    },
                    body: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      spacing: 7,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text('Resultado: ${kilometrosAHectometros()}'),
                                    );
                                  });
                            },
                            child:  const Text(
                              'Km a Hm',
                              style: TextStyle(color: Colors.black),
                            )),
                         ElevatedButton(
                            onPressed: (){

                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text('Resultado: ${kilometrosADecametros()}'),
                                    );
                                  });
                            },
                            child:  const Text(
                              'Km a Dam',
                              style: TextStyle(color: Colors.black),
                            )),
                         ElevatedButton(
                            onPressed: (){

                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text('Resultado: ${kilometrosAMetros()}'),
                                    );
                                  });
                            },
                            child: const Text(
                              'Km a M',
                              style: TextStyle(color: Colors.black),
                            )),
                          ElevatedButton(
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text('Resultado: ${kilometrosADecimetros()}'),
                                    );
                                  });
                            },
                            child: const Text(
                              'Km a Dm',
                              style: TextStyle(color: Colors.black),
                            )),
                         ElevatedButton(
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text('Resultado: ${kilometrosACentimetros()}'),
                                    );
                                  });
                            },
                            child: const Text(
                              'Km a Cm',
                              style: TextStyle(color: Colors.black),
                            )),
                         ElevatedButton(
                            onPressed: (){

                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text('Resultado: ${kilometrosAMilimetros()}'),
                                    );
                                  });
                            },
                            child: const Text(
                              'Km a Mm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Hm a Km',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Hm a Dam',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Hm a M',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Hm a Dm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Hm a Cm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Hm a Mm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dam a Km',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dam a Hm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dam a M',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dam a Dm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dam a Cm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dam a Mm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'M a Km',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'M a Hm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'M a Dam',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'M a Dm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'M a Cm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'M a Mm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dm a Km',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dm a Hm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dm a Dam',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dm a M',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dm a Cm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dm a Mm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Cm a Km',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Cm a Hm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Cm a Dam',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Cm a M',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Cm a Dm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Cm a Mm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Dm a Km',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Km a Hm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Mm a Dam',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Mm a M',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Mm a Dm',
                              style: TextStyle(color: Colors.black),
                            )),
                         const ElevatedButton(
                            onPressed: null,
                            child: Text(
                              'Mm a Cm',
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    ),
                    isExpanded: active,
                    canTapOnHeader: true,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
