import 'package:cash_handling_display/widgets/resources/theme/main_display_widget_theme.dart';
import 'package:flutter/material.dart';

class MainCashHandlingScreen extends StatefulWidget {
  MainCashHandlingScreen({Key? key}) : super(key: key);

  @override
  State<MainCashHandlingScreen> createState() => _MainCashHandlingScreenState();
}

class _MainCashHandlingScreenState extends State<MainCashHandlingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                //profile
                const ProfileRowWidget(),
                const SizedBox(height: 20),
                //limited offer
                const LimitedOfferWidget(),
                const SizedBox(height: 20),
                //your balance
                const YourBalanceWidget(),
                const SizedBox(height: 20),
                //amount
                const AmountWidget(),
                const SizedBox(height: 20),

                //or
                const OrWidget(),
                const SizedBox(height: 20),

                //choose your sum
                const ChooseSumButtonWidget(),
                const SizedBox(height: 20),

                //deposit button
                const DepositButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DepositButtonWidget extends StatelessWidget {
  const DepositButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: const Color.fromARGB(255, 32, 77, 33),
        child: InkWell(
          onTap: () {},
          child: Ink(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.green, Colors.black])),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: const SizedBox(
                height: 45,
                width: 380,
                child: Center(
                  child: Text('Deposit',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ChooseSumButtonWidget extends StatelessWidget {
  const ChooseSumButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Choose your sum',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CellChooseWidget(number: '\$2'),
                const CellChooseWidget(number: '\$5'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CellChooseWidget(number: '\$10'),
                const CellChooseWidget(number: '\$15'),
              ],
            )
          ],
        )
      ],
    );
  }
}

class CellChooseWidget extends StatelessWidget {
  final String number;
  const CellChooseWidget({
    required this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: 90,
        width: 180,
        child: Material(
          color: Colors.black,
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: const Color.fromARGB(255, 32, 77, 33))),
              child: Center(
                child: Text(number,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OrWidget extends StatelessWidget {
  const OrWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.grey,
            height: 1,
          ),
        ),
        const Expanded(
          child: Center(
            child: Text('or',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.grey,
            height: 1,
          ),
        ),
      ],
    );
  }
}

class AmountWidget extends StatelessWidget {
  const AmountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Amount',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[500],
            focusedBorder: textfieldtheme,
            enabledBorder: textfieldtheme,
          ),
          cursorColor: const Color.fromARGB(255, 32, 77, 33),
        )
      ],
    );
  }
}

class YourBalanceWidget extends StatelessWidget {
  const YourBalanceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 32, 77, 33)),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text('USD',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w700)),
                  const Text('100.00',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              const Text('Your Balance',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold))
            ],
          )),
    );
  }
}

class LimitedOfferWidget extends StatelessWidget {
  const LimitedOfferWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text('Limited Offer',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400)),
          const Text('Timer',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.w700)),
        ]),
        const SizedBox(height: 10),

        //bonus cash button

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              const BoxShadow(
                  blurRadius: 0.4,
                  color: Color.fromARGB(255, 78, 118, 78),
                  offset: Offset(2.0, 3.0))
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Material(
              color: const Color.fromARGB(255, 32, 77, 33),
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('\$15 Bonus Cash',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold)),
                      Column(
                        children: [
                          const Text('with a \$10',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700)),
                          const Text('Deposit',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileRowWidget extends StatelessWidget {
  const ProfileRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            //avatar
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(14.0),
                child: Icon(Icons.person),
              ),
            ),

            const SizedBox(width: 10),

            //username and country
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('HaidanWeem',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
                const SizedBox(height: 5),
                const Text('Ukraine',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.w700))
              ],
            )
          ],
        ),

        //menubutton

        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
            color: Colors.black,
            child: InkWell(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 32, 77, 33)),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Icon(Icons.menu_outlined, color: Colors.white),
                  )),
            ),
          ),
        )
      ],
    );
  }
}
