import 'package:biznugget/core/common/widgets/account_type_card.dart';
import 'package:flutter/material.dart';

import '../../signup/business_account.dart';
import '../../signup/consumer_account.dart';
import '../../signup/job_creator.dart';
import '../../signup/service_provider.dart';
import '../../signup/vendor_account.dart';
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const BusinessSignupScreen()));
              },
            ),
            AccountTypeCard(
              accountType: 'Service Providers',
              cardColor: const Color(0xFF01C3CC),
              accountImage: 'assets/images/acc_type_logos/Service.png',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ServiceProviderSignupScreen()));
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => VendorSignupScreen()));
              },
            ),
            AccountTypeCard(
              accountType: 'Shoppers',
              cardColor: const Color(0xFF01C3CC),
              accountImage: 'assets/images/acc_type_logos/shopping_bag.png',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ConsumerSignupScreen()));
              },
            ),
            AccountTypeCard(
              accountType: 'Job Creator',
              cardColor: const Color(0xFF3F56F2),
              accountImage: 'assets/images/acc_type_logos/home_office.png',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => JobCreatorSignupScreen()));
              },
            ),
          ],
        ),
      )),
    );
  }
}
