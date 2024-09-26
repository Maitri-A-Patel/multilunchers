import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fancy_button_flutter/fancy_button_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MultiLaunchers());
}

class MultiLaunchers extends StatefulWidget {
  const MultiLaunchers({super.key});

  @override
  State<MultiLaunchers> createState() => _MultiLaunchersState();
}

class _MultiLaunchersState extends State<MultiLaunchers> {
  // Updated phone launcher method
  // note - android-> src-> main ->permissio code add karo
  void dialPhone() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: '+91 9409047221');
    await launchUrl(phoneUri);
  }

  // Open a website
  void WebsiteLauncher() async {
    final Uri webUri = Uri(scheme: 'https', host: 'www.facebook.com');
    await launchUrl(webUri);
  }

  // Send an SMS
  void MassageLaucher() async {
    final Uri smsUri = Uri(scheme: 'sms', path: '+91 94090472211');
    await launchUrl(smsUri);
  }

  // Send an email
  void EmailLauncher() async {
    final Uri emailUri =
        Uri(scheme: 'mailto', path: 'maitripatel5366@gmail.com');
    await launchUrl(emailUri);
  }

  void openFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
  }

  // Future<void> pickImage() async {
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  //   if (image != null) {
  //     // Use the selected image
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Multi Launcher"),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Phone button
                FancyButton(
                  button_icon: Icons.phone_android,
                  button_text: "Phone",
                  button_height: 40,
                  button_width: 100,
                  button_radius: 50,
                  button_color: Colors.blue,
                  button_outline_color: Colors.blueGrey,
                  button_outline_width: 1,
                  button_text_color: Colors.white,
                  button_icon_color: Colors.white,
                  icon_size: 22,
                  button_text_size: 15,
                  onClick: dialPhone,
                ), // Calls the phone launcher

                SizedBox(height: 30),

                // Other buttons (kept as is)
                FancyButton(
                    button_icon: Icons.sms,
                    button_text: "Massages",
                    button_height: 40,
                    button_width: 150,
                    button_radius: 50,
                    button_color: Colors.red,
                    button_outline_color: Colors.yellow,
                    button_outline_width: 1,
                    button_text_color: Colors.white,
                    button_icon_color: Colors.white,
                    icon_size: 22,
                    button_text_size: 15,
                    onClick: MassageLaucher),

                SizedBox(height: 30),

                FancyButton(
                    button_icon: Icons.camera_alt_rounded,
                    button_text: "Camera",
                    button_height: 40,
                    button_width: 150,
                    button_radius: 50,
                    button_color: Colors.grey,
                    button_outline_color: Colors.grey,
                    button_outline_width: 1,
                    button_text_color: Colors.white,
                    button_icon_color: Colors.white,
                    icon_size: 22,
                    button_text_size: 15,
                    onClick: () {}),

                SizedBox(height: 30),

                FancyButton(
                    button_icon: Icons.email,
                    button_text: "Email",
                    button_height: 40,
                    button_width: 150,
                    button_radius: 50,
                    button_color: const Color.fromARGB(255, 169, 166, 166),
                    button_outline_color: Colors.white38,
                    button_outline_width: 1,
                    button_text_color: Colors.black,
                    button_icon_color: Colors.black,
                    icon_size: 22,
                    button_text_size: 15,
                    onClick: EmailLauncher),

                SizedBox(height: 30),

                FancyButton(
                    button_icon: Icons.facebook,
                    button_text: "  Facebook  ",
                    button_height: 40,
                    button_width: 150,
                    button_radius: 50,
                    button_color: Colors.blue,
                    button_outline_color: Colors.blue,
                    button_outline_width: 1,
                    button_text_color: Colors.white,
                    button_icon_color: Colors.white,
                    icon_size: 22,
                    button_text_size: 15,
                    onClick: WebsiteLauncher),

                SizedBox(height: 30),

                FancyButton(
                    button_icon: Icons.file_copy,
                    button_text: "  Files  ",
                    button_height: 40,
                    button_width: 150,
                    button_radius: 50,
                    button_color: const Color.fromARGB(255, 172, 140, 1),
                    button_outline_color: Colors.yellowAccent,
                    button_outline_width: 1,
                    button_text_color: Colors.white,
                    button_icon_color: Colors.white,
                    icon_size: 22,
                    button_text_size: 15,
                    onClick: openFilePicker),
              ],
            ),
          ),
        ));
  }
}
