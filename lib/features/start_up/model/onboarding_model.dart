class OnboardingModel {
  final String imageUrl;
  final String title;
  final String desc;

  OnboardingModel({
    required this.imageUrl,
    required this.title,
    required this.desc,
  });
}

List<OnboardingModel> onboardingModelData = [
  OnboardingModel(
    imageUrl: 'assets/svg/onboardingImg1.svg',
    title: 'Business Account',
    desc:
        'Sign up for and use a Business account to operate under a company/group name, accept debit card, credit card, and bank account payments, allow up to 200 employees limited access to your account',
  ),
  OnboardingModel(
    imageUrl: 'assets/svg/onboardingImg2.svg',
    title: 'Vendor Account',
    desc:
        'Sign up for and use a vendor account to operate small, businesses (including unregistered), accept debit card,credit card, and bank account payments',
  ),
  OnboardingModel(
    imageUrl: 'assets/svg/onboardingImg3.svg',
    title: 'Service Provider',
    desc:
        'For service providers, this account will enable a seamless relationship with your cutsomers. ',
  ),
  OnboardingModel(
    imageUrl: 'assets/svg/onboardingImg4.svg',
    title: 'Job Creator',
    desc:
        'This account will enable you provide new opportunities for paid employment.',
  ),
  OnboardingModel(
    imageUrl: 'assets/svg/onboardingImg5.svg',
    title: 'Freelancer',
    desc:
        'Sign up as an independent contractor and earn wages on a per-job or per-task basis, typically for short-term work.',
  ),
  OnboardingModel(
    imageUrl: 'assets/svg/onboardingImg6.svg',
    title: 'Consumer',
    desc:
        'This account is for a user that desires to buy products or access services for personal use.',
  ),
];
