import 'package:admin_dashboard/core/widget/sizedbox_widget_atomic.dart';
import 'package:admin_dashboard/core/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RegisterRightContentWebView extends StatefulWidget {
  RegisterRightContentWebView({Key? key}) : super(key: key);

  @override
  State<RegisterRightContentWebView> createState() => _RegisterRightContentWebViewState();
}

enum SingingCharacter { identityDocuments, pasaportDocuments }

class _RegisterRightContentWebViewState extends State<RegisterRightContentWebView> {
  final TextEditingController countryController = TextEditingController();

  CountryLabel? selectedColor;
  bool isChecked = false;

  List<DropdownMenuItem<String>> items = [
    DropdownMenuItem(value: "turkey", child: Text("Turkey")),
    DropdownMenuItem(value: "netherlands", child: Text("Netherlands"))
  ];

  SingingCharacter? _character = SingingCharacter.identityDocuments;
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 2.sp),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<CountryLabel>> countryEntries = <DropdownMenuEntry<CountryLabel>>[];
    for (final CountryLabel color in CountryLabel.values) {
      countryEntries
          .add(DropdownMenuEntry<CountryLabel>(value: color, label: color.label, enabled: color.label != 'Grey'));
    }

    return Container(
      alignment: Alignment.center,
      width: 70.w,
      height: 100.h,
      child: Container(
        alignment: Alignment.center,
        width: 50.w,
        height: 90.h,
        //color: Colors.red,
        child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Row(
                children: [
                  ExpandedTextFieldWidget(labelText: "Name"),
                  ExpandedTextFieldWidget(labelText: "Middle Name"),
                  ExpandedTextFieldWidget(labelText: "Surname"),
                ],
              ),
              Row(
                children: [
                  ExpandedTextFieldWidget(labelText: "Email"),
                  ExpandedTextFieldWidget(labelText: "Phone Number"),
                  ExpandedTextFieldWidget(labelText: "Zip Code"),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Center(
                        child: DropdownMenu<CountryLabel>(
                          width: SizerUtil.width <1200 ? 10.w :
                          16.w,
                          label: const Text('Country'),
                          dropdownMenuEntries: countryEntries,
                          onSelected: (CountryLabel? color) {},
                        ),
                      ),
                    ),
                  ),
                  ExpandedTextFieldWidget(labelText: "State"),
                  ExpandedTextFieldWidget(labelText: "City"),
                ],
              ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      child: TextFieldWidget(
                        labelText: "Address",
                        maxLines: 3,
                      ),
                    ),
                  ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: const Text('Identity Documents'),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.identityDocuments,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Pasaport Documents'),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.pasaportDocuments,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Upload Documents",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[100],
                        textStyle: TextStyle(
                          fontSize: 1.7.sp,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.5.h),
                        ),
                      ),
                    ),
                  ),
                  Spacer()
                ],
              ),
              SizedboxWidget(),
              CheckBoxWidget(title: 'Aydınlatma Metni'),
              CheckBoxWidget(title: 'Rıza Metni'),
              CheckBoxWidget(title: 'Elektronik İzin Metni'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 4.h,
                  width: 50.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "REGISTER",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[300],
                      textStyle: TextStyle(
                        fontSize: 2.sp,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.5.h),
                      ),
                    ),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}

class ExpandedTextFieldWidget extends StatelessWidget {
  ExpandedTextFieldWidget({super.key, required this.labelText, this.flex});

  String labelText;
  int? flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex ?? 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextFieldWidget(labelText: labelText),
        ));
  }
}

class CheckBoxWidget extends StatefulWidget {
  CheckBoxWidget({Key? key, required this.title, this.isChecked}) : super(key: key);

  bool? isChecked;
  String title;

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.w,
      child: Container(
        child: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(widget.title),
          value: widget.isChecked ?? false,
          onChanged: (value) {
            setState(() {
              widget.isChecked = value;
            });
          },
          activeColor: Colors.blue,
          checkColor: Colors.white,
        ),
      ),
    );
  }
}

enum CountryLabel {
  turkey('Turkey', "turkey"),
  netherlans('Netherlans', "netherlans"),
  germany('Germany', "germany");

  const CountryLabel(this.label, this.subLabel);
  final String label;
  final String subLabel;
}
