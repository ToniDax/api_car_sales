
import 'package:api_car_hometask/riverpood.dart';
import 'package:api_car_hometask/src/core/style/text_style.dart';
import 'package:api_car_hometask/src/feature/main/view/widgets/banner_scroll_widget.dart';
import 'package:api_car_hometask/src/feature/main/view/widgets/custom_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/style/app_colors.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context, ref) {
    ref.watch(mainVM);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(

        backgroundColor: AppColors.orangeRang,
        surfaceTintColor: Colors.blue,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(
            Icons.light_mode,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        shadowColor: AppColors.kulrangYozuvRangi,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active_outlined)),
        ],
        title: const Center(
          child: Text(
            "CarStore",
            style: TextStyle(
              color: AppColors.orangeRang,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSearchWidget(
                  hintText: 'Search',

                  controller: ref.read(mainVM).searchController,
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.005,
                ),
                SizedBox(
                  child:  Center(
                    child: IconButton(
                     icon:const Icon(Icons.settings,
                      color: Colors.black54,
                     ),
                      onPressed: () {  },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.025,
            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 10),
              child: SizedBox(
                height: 200,

                child: Expanded(

                  flex: 1,
                  child: BannerScrollWidget(
                    controller: ref.read(mainVM).controller
                  ),
                ),
              ),
            ),

          // SizedBox(
          //   child: SingleChildScrollView(
          //
          //     clipBehavior: Clip.antiAlias,
          //
          //       scrollDirection: Axis.vertical,
          //     child:Banner(
          //
          //       color: Colors.red,
          //     message: 'tesla Model 3 Standard Range Plus',
          //      location: BannerLocation.bottomEnd,
          //     child: Image.asset("assets/images/Tesla.png")),
          //
          //   ),
          // ),
               Row(
                children: [
                const  Text(
                    "Recommended",

                  style: TextStyle(
                    color:AppColors.darkOrqaFonRangi,
                    fontSize: FontSize.size20,
                    fontWeight: FontWeight.w600,

                  ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: (){},
                  child:  const Text( "See all",
                    style: TextStyle(
                      color:AppColors.searchWidgetRangi,
                      fontSize: FontSize.size16,
                      fontWeight: FontWeight.w500,

                    ),
                  ),),

                ],
              ),

            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount:5,
                itemBuilder: (context, index) {
                  // final car = homeVmController.carList[index];
                  return  MaterialButton(
                    onPressed: (){
                     // log(homeVmController.carList.length.toString());
                    },
                    height: 35, // Adjust height and width as needed
                    minWidth: 20,
                    color: Colors.black, // Replace with your desired widget
                  );
                },
              ),
            ),


            // Consumer(builder: (context, ref, _) {
            //   final con = ref.watch(mainFetchData);
            //   return con.when(
            //     data: (data) => SizedBox(
            //       width: double.infinity,
            //       child: ListView.builder(
            //         controller: ref.read(mainVM).scrollController,
            //         itemCount: ref.read(mainVM).allCars.length,
            //         itemBuilder: (_, index) {
            //           return Card(
            //               child: SizedBox(
            //             height: 400,
            //             width: double.infinity,
            //             child: Expanded(
            //               flex: 1,
            //               child: Column(children: [
            //                 Text(ref
            //                         .read(mainVM)
            //                         .allCars[index]
            //                         .transmission ??
            //                     "No name "),
            //                 Text(ref
            //                         .read(mainVM)
            //                         .allCars[index]
            //                         .getAllImageModelClass ??
            //                     "No name "),
            //               ]),
            //             ),
            //           ));
            //         },
            //       ),
            //     ),
            //     error: (error, stackTrace) => Text("Error: $error"),
            //     loading: () => const CircularProgressIndicator(),
            //   );
            // }),
            // Visibility(
            //   visible: ref.watch(mainVM).isLoading,
            //   child: const CircularProgressIndicator(),
            // ),
          ],
        ),
      ),
    );
  }
}
