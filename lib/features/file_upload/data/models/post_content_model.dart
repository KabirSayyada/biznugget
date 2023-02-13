
class ContentModel {
  const ContentModel({required this.image, required this.title});

  final String image;
  final String title;
}

List<ContentModel> contents = [
  const ContentModel(
    image: "assets/svg/post_ad.svg",
    title: "Post an ad",
  ),
  const ContentModel(
    image: "assets/svg/customer_relation.svg",
    title: "Share a service",
  ),
  const ContentModel(
    image: "assets/svg/job_openings.svg",
    title: "Post job openings",
  ),
  const ContentModel(
    image: "assets/svg/build_porfolio.svg",
    title: "Build a portfolio",
  ),
  const ContentModel(
    image: "assets/svg/source_expert.svg",
    title: "Source an expert",
  ),
  const ContentModel(
    image: "assets/svg/add_something_new.svg",
    title: "Add soemthing new",
  ),
];
