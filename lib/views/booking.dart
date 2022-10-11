part of 'pages.dart';

class Booking extends StatefulWidget {
  const Booking({ Key? key }) : super(key: key);

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {

  @override
  void initState() {
    super.initState();
  }

  final _bookingKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlName = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    ctrlCity.dispose();
    ctrlEmail.dispose();
    ctrlName.dispose();
    ctrlPhone.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _bookingKey,
            child: Column(
              children: [
                SizedBox(height: 128),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    labelText: "Full Name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  controller: ctrlName,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ((value) {
                    return value!.isEmpty ? "Full name is required!" : null; 
                  }),
                ),
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email Address",
                    labelText: "Email Address",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ((value) {
                    return !EmailValidator.validate(value.toString()) ? 'You must input a valid email!' : null;
                  }),
                ),
                SizedBox(height: 16,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    labelText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  controller: ctrlPhone,
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ((value) {
                    return value!.isEmpty ? "Phone number is required!" : null; 
                  }),
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "City",
                    labelText: "City",
                    prefixIcon: Icon(Icons.location_city),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  controller: ctrlCity,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ((value) {
                    return value!.isEmpty ? "Your city is required!" : null; 
                  }),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: (() {
                    if(ctrlCity.text.isEmpty || ctrlEmail.text.isEmpty || ctrlName.text.isEmpty || ctrlPhone.text.isEmpty){
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Book failed!"),
                            content: Text("You've must fill all the fields!"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: (() {
                                  Navigator.of(context).pop(context);
                                }),
                                child: Text("OK")
                                )
                            ],
                          );
                        });
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Book success!"),
                            actions: <Widget>[
                              Align(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                Text("Full name : "+ctrlName.text),
                                Text("Email : "+ctrlEmail.text),
                                Text("Phone : "+ctrlPhone.text),
                                Text("City : "+ctrlCity.text),
                                ]),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil<dynamic>(context, MaterialPageRoute(builder: ((context) => MissionOne())), (route) => false);
                                },
                                child: Text("OK")
                                ),
                            ],
                          );
                        });
                    }
                  }),
                  child: Text("Book Now!")
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}