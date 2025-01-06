import 'package:flutter/material.dart';

// import '../../core/components/app_back_button.dart';
// import '../../core/constants/app_defaults.dart';

class AboutUsPageForBottomNavBar extends StatelessWidget {
  const AboutUsPageForBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CS KMUTNB',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Image.asset('assets/images/cs_2018_crop.jpg'),
            // Image.asset('assets/images/esp-32.png'),
            // Image.network('https://picsum.photos/250?image=9'),

            const Text(
              'Department of Computer and Information Science',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Container(
            // height: 440,
            // width: 400,//double.infinity,
            // width: MediaQuery.sizeOf(context).width,  // same as infinity
            // child: Image.network(
            //   'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            //   // width: 640,
            //   // height: 240,
            //   fit: BoxFit.cover,
            // ),
            // ),
            const SizedBox(height: 8),
            const Text(
                '''In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.\n\nMaecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien.\n\nAliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.''')
          ],
        ),
      ),
    );
  }
}
