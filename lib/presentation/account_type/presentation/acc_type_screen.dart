import 'package:biznugget/core/common/widgets/account_type_card.dart';
import 'package:flutter/material.dart';

import 'inner_pages/freelancer_jobs.dart';

class AccountTypeScreen extends StatelessWidget {
  const AccountTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account Type',
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            AccountTypeCard(
              accountType: 'Businesses',
              cardColor: const Color(0xFF830D3F),
              accountImage: 'assets/images/acc_type_logos/handshake.png',
              onPressed: () {},
            ),
            AccountTypeCard(
              accountType: 'Service Providers',
              cardColor: const Color(0xFF01C3CC),
              accountImage: 'assets/images/acc_type_logos/Service.png',
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (_) => ServiceProviders(jobType: '', jobImage: '')));
              },
            ),
            AccountTypeCard(
              accountType: 'Freelancers',
              cardColor: const Color(0xFF3F56F2),
              accountImage: 'assets/images/acc_type_logos/home_office.png',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const FreelancerJobs()));
              },
            ),
            AccountTypeCard(
              accountType: 'Vendors',
              cardColor: const Color(0xFF830D3F),
              accountImage: 'assets/images/acc_type_logos/reseller.png',
              onPressed: () {},
            ),
            AccountTypeCard(
              accountType: 'Shoppers',
              cardColor: const Color(0xFF01C3CC),
              accountImage: 'assets/images/acc_type_logos/shopping_bag.png',
              onPressed: () {},
            ),
            AccountTypeCard(
              accountType: 'Job Creator',
              cardColor: const Color(0xFF3F56F2),
              accountImage: 'assets/images/acc_type_logos/home_office.png',
              onPressed: () {},
            ),
          ],
        ),
      )),
    );
  }
}
