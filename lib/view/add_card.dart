import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {

  final _formKey=GlobalKey<FormState>();
  final nameCardController=TextEditingController();
  final titleCardController=TextEditingController();
  final companyCardController=TextEditingController();
  final phoneCardController=TextEditingController();
  final mailcardController=TextEditingController();
  final websiteCardController=TextEditingController();

  @override
  void dispose() {
    super.dispose();

    nameCardController.dispose();
    titleCardController.dispose();
    companyCardController.dispose();
    phoneCardController.dispose();
    mailcardController.dispose();
    websiteCardController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Entrez votre Nom",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "vous devez remplir ce champ";
                  }
                  return null;
                },
                controller: nameCardController,
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Title",
                    hintText: "Entrez votre metier",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "vous devez remplir ce champ";
                  }
                  return null;
                },
                controller: titleCardController,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Company",
                    hintText: "Acme corp",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "vous devez remplir ce champ";
                  }
                  return null;
                },
                controller: companyCardController,
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Phone ",
                    hintText: "+1 (555)123-4567",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "vous devez remplir ce champ";
                  }
                  return null;
                },
                controller: phoneCardController,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "john.doe@xexample.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "vous devez remplir ce champ";
                  }
                  return null;
                },
                controller: mailcardController,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Website",
                  hintText: "WWW.example.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "vous devez remplir ce champ";
                  }
                  return null;
                },
                controller: websiteCardController,
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      final nameCard=nameCardController.text;
                      final titleCard=titleCardController.text;
                      final companyCard=companyCardController.text;
                      final phoneCard=phoneCardController.text;
                      final mailCard=mailcardController.text;

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Envoi en cours... "))
                      );
                      FocusScope.of(context).requestFocus(FocusNode());

                      print("ajout de la card de visite $nameCard,$titleCard");
                    }
                  },
                  child: Text("Enoyer"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
