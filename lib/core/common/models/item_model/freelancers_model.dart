class Freelancers {
  Freelancers({required this.jobType, required this.jobImage});
  final String jobType, jobImage;
}

final List<Freelancers> freelancersInfo = [
  Freelancers(
      jobType: 'Virtual Assistant',
      jobImage: 'assets/images/freelancers/virtual_ass.png'),
  Freelancers(
      jobType: 'App Developer',
      jobImage: 'assets/images/freelancers/developer.png'),
  Freelancers(
      jobType: 'Graphics Designer',
      jobImage: 'assets/images/freelancers/designer.png'),
  Freelancers(
      jobType: 'UI/UX Designer',
      jobImage: 'assets/images/freelancers/ui_designer.png'),
  Freelancers(
      jobType: 'Content Creator',
      jobImage: 'assets/images/freelancers/content_creator.png'),
];