import 'package:biznugget/core/common/models/item_model/service_provider_model.dart';
import 'package:biznugget/core/common/widgets/job_description_card.dart';
import 'package:flutter/material.dart';

class ServiceProviders extends StatefulWidget {
  const ServiceProviders({super.key});

  @override
  State<ServiceProviders> createState() => _ServiceProvidersState();
}

class _ServiceProvidersState extends State<ServiceProviders> {
  final int _itemCount = serviceProvidersInfo.length;
  final int _itemsPerPage = 10;
  int currentIndex = 0;
  PageController controller =
      PageController(viewportFraction: 1, keepPage: true);
  @override
  Widget build(BuildContext context) {
    final int pageCount = (_itemCount / _itemsPerPage).ceil();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Service Providers',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: controller,
                itemCount: pageCount,
                onPageChanged: (pageIndex) {
                  setState(() {
                    currentIndex = pageIndex;
                  });
                },
                itemBuilder: (context, pageIndex) {
                  int itemsOnPreviousPages = pageIndex * 10;
                  int itemsRemaining =
                      serviceProvidersInfo.length - itemsOnPreviousPages;
                  int itemsOnCurrentPage =
                      itemsRemaining > 10 ? 10 : itemsRemaining;
                  int startIndex = itemsOnPreviousPages;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 2.0,
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      shrinkWrap: true,
                      itemCount: _itemsPerPage,
                      itemBuilder: (BuildContext context, index) {
                        // Calculate the index of the item based on the page index
                        int itemIndex = startIndex + index;

                        // Check if we've reached the end of the items
                        if (itemIndex >= serviceProvidersInfo.length) {
                          return null;
                        }
                        return JobDescription(
                            jobType: serviceProvidersInfo[itemIndex].jobType,
                            jobImage: serviceProvidersInfo[itemIndex].jobImage);
                      },
                    ),
                  );
                }),
          ),
          Container(
              height: 50,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  pageCount,
                  (index) => Container(
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == index ? Colors.blue : Colors.grey,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                          controller.jumpToPage(currentIndex);
                        });
                      },
                      child: Center(
                        child: Text("${index + 1}"),
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
