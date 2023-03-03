import 'package:biznugget/core/utils/media_query_values.dart';
import 'package:biznugget/features/payment/constants/color_const.dart';
import 'package:biznugget/features/payment/constants/payment_dimention.dart';
import 'package:biznugget/features/payment/widget/custom_button.dart';
import 'package:biznugget/features/payment/widget/custom_text_widget.dart';
import 'package:biznugget/features/payment/widget/nav_button.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart'
    show
        FilteringTextInputFormatter,
        LengthLimitingTextInputFormatter,
        TextInputFormatter;

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({super.key});

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  // final _formKey = GlobalKey<FormState>();
  late final TextEditingController _cardNumberController;
  late final TextEditingController _expDateController;
  late final TextEditingController _cvvController;
  late final TextEditingController _cardHolderController;

  @override
  void initState() {
    _cardNumberController = TextEditingController();
    _expDateController = TextEditingController();
    _cvvController = TextEditingController();
    _cardHolderController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _cardNumberController.dispose();
    _expDateController.dispose();
    _cvvController.dispose();
    _cardHolderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final height = context.height;
    // final width = context.width ;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kOuterPaddingHorizontalRadius,
              vertical: kOuterPaddingVerticalRadius),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            // child: Form(
            // key: _formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: height / 22),
              BackNavigationButton(
                opressed: () {
                  //TODO
                  //to implent a route GoBack Event to any pay that directed us here
                },
              ),
              SizedBox(height: height / 16),
              const PaymentTextWidget(
                title: 'Debit / Credit\nCard',
                fontsize: 24,
              ),
              SizedBox(height: height / 35),
              buildTextFielBox(
                title: 'Payment method',
                hintText: '****  ****  ****  ****',
                iHaveImageAndFormatter: true,
                controller: _cardNumberController,
                formatterList: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(16),
                  CardNumberFormatter(
                    indexNumber: 4,
                    seperatorChar: ' ',
                  ),
                ],
              ),
              SizedBox(height: height / 38),
              Row(
                children: [
                  Expanded(
                    child: buildTextFielBox(
                      controller: _expDateController,
                      keyBoardType: TextInputType.datetime,
                      title: 'Exp date',
                      hintText: 'Month / Year',
                      formatterList: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(4),
                        CardNumberFormatter(
                          indexNumber: 2,
                          seperatorChar: '/',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: buildTextFielBox(
                      controller: _cvvController,
                      title: 'CVV',
                      hintText: '****',
                      formatterList: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(3),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: height / 45),
              buildTextFielBox(
                controller: _cardHolderController,
                keyBoardType: TextInputType.name,
                title: 'Card holder',
                hintText: 'Your Name',
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return 'Enter a correct name';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 8),
              buildCheckButton(isChecked: true),
              SizedBox(height: height / 20),
              CustomButton(
                  title: 'Add Card',
                  oppressed: () {
                    // if (_formKey.currentState!.validate()) {}
                  }),
            ]),
          ),
        ),
      ),
    );
    // );
  }

  Widget buildTextFielBox({
    required TextEditingController controller,
    final String? Function(String?)? validator,
    required final String title,
    required final String hintText,
    final bool iHaveImageAndFormatter = false,
    TextInputType keyBoardType = TextInputType.number,
    List<TextInputFormatter>? formatterList,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PaymentTextWidget(
          title: title,
          fontWeight: FontWeight.w500,
          color: kBackNavBtnColor,
        ),
        const SizedBox(height: 10),
        TextFormField(
          validator: validator,
          controller: controller,
          inputFormatters: formatterList ?? [],
          autocorrect: false,
          enableSuggestions: false,
          keyboardType: keyBoardType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
            hintText: hintText,
            contentPadding: const EdgeInsets.only(
              left: 20.0,
              // top: 16,
            ),
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
            prefixIcon: iHaveImageAndFormatter
                ? Container(
                    height: 40,
                    width: 50,
                    padding: const EdgeInsets.only(left: 10),
                    margin: const EdgeInsets.only(right: 25),
                    child: Image.asset(
                      'lib/assets/images/biznugget/Group 2.png',
                      height: 40,
                      width: 50,
                    ),
                  )
                : null,
          ),
        )
      ],
    );
  }

  Widget buildCheckButton({required bool isChecked}) {
    return Row(
      children: [
        Checkbox(
          //checkColor: ,
          value: isChecked,
          onChanged: (isChecked) {},
          activeColor: kPaymentIconColor,
        ),
        const PaymentTextWidget(title: 'Set as your default method'),
      ],
    );
  }
}

class CardNumberFormatter extends TextInputFormatter {
  final String seperatorChar;
  final int indexNumber;
  CardNumberFormatter({required this.seperatorChar, required this.indexNumber});
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var inputText = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % indexNumber == 0 &&
          nonZeroIndexValue != inputText.length) {
        bufferString.write(seperatorChar);
      }
    }

    var string = bufferString.toString();
    return newValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
